/**
 * sw.js — PortableGarage Service Worker
 * Suporte a PWA offline para assets estáticos e controle de versão.
 * 
 * SEGURANÇA: Requisições do Supabase (*.supabase.co) NUNCA são salvas em cache.
 */

'use strict';

const CACHE_NAME = 'portablegarage-v1.0.7';

const STATIC_ASSETS = [
  './index.html',
  './manifest.webmanifest',
  './css/style.css',
  './css/layout.css',
  './css/components.css',
  './css/animations.css',
  './css/collection.css',
  './js/app.js',
  './js/auth.js',
  './js/cars.js',
  './js/shell.js',
  './js/ui.js',
  './js/supabase.js',
  './js/scanner.js',
  './js/pwa.js',
  './js/vendor/html5-qrcode.min.js',
  './js/services/catalog.service.js',
  './js/services/collection.service.js',
  './js/services/favorites.service.js',
  './js/services/wishlist.service.js',
  './js/services/import.service.js',
  './assets/car.logo.png',
  './assets/icon-192.png',
  './assets/icon-512.png',
  './assets/apple-touch-icon.png'
];

// Instalação do Service Worker
self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => {
      console.log('[Service Worker] Pré-carregando cache estático:', CACHE_NAME);
      return cache.addAll(STATIC_ASSETS).catch((err) => {
        console.warn('[Service Worker] Falha ao pré-carregar alguns assets estáticos:', err);
      });
    })
  );
  self.skipWaiting();
});

// Ativação e limpeza de caches antigos (Cache Busting)
self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys().then((cacheNames) => {
      return Promise.all(
        cacheNames.map((cacheName) => {
          if (cacheName !== CACHE_NAME) {
            console.log('[Service Worker] Apagando cache antigo:', cacheName);
            return caches.delete(cacheName);
          }
        })
      );
    }).then(() => self.clients.claim())
  );
});

// Interceptação de requisições
self.addEventListener('fetch', (event) => {
  const url = new URL(event.request.url);

  // REGRA DE SEGURANÇA 1: Ignorar requisições do Supabase ou chamadas de API externas (exclusivamente na rede)
  if (url.hostname.includes('supabase.co') || url.pathname.includes('/auth/v1/')) {
    return;
  }

  // Apenas requisições GET
  if (event.request.method !== 'GET') {
    return;
  }

  // Estratégia Network-First com Fallback de Cache para navegação e assets estáticos
  event.respondWith(
    fetch(event.request)
      .then((networkResponse) => {
        // Se a requisição for válida, atualiza o cache em segundo plano
        if (networkResponse && networkResponse.status === 200 && networkResponse.type === 'basic') {
          const responseToCache = networkResponse.clone();
          caches.open(CACHE_NAME).then((cache) => {
            cache.put(event.request, responseToCache);
          });
        }
        return networkResponse;
      })
      .catch(() => {
        // Se a rede falhar, busca no cache local
        return caches.match(event.request).then((cachedResponse) => {
          if (cachedResponse) {
            return cachedResponse;
          }
          // Se for requisição HTML de navegação, pode retornar index.html do cache
          if (event.request.headers.get('accept')?.includes('text/html')) {
            return caches.match('./index.html');
          }
        });
      })
  );
});
