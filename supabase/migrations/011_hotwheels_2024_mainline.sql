-- ============================================================
-- 011_hotwheels_2024_mainline.sql
-- Hot Wheels Collector — Ingestão da Base Mainline 2024 (250 Modelos)
-- Totalmente idempotente com ON CONFLICT / CTEs.
-- ============================================================

-- 1. Fabricantes
INSERT INTO public.manufacturers (name)
VALUES
  ('Alfa Romeo'),
  ('Aston Martin'),
  ('Audi'),
  ('BMW'),
  ('Bugatti'),
  ('Cadillac'),
  ('Chevrolet'),
  ('Chrysler'),
  ('DC Comics'),
  ('Dodge'),
  ('Fiat'),
  ('Ford'),
  ('Honda'),
  ('Hot Wheels'),
  ('Jaguar'),
  ('Jeep'),
  ('Koenigsegg'),
  ('Lamborghini'),
  ('Land Rover'),
  ('Lotus'),
  ('Mazda'),
  ('McLaren'),
  ('Mercedes-Benz'),
  ('Mitsubishi'),
  ('Nissan'),
  ('Pagani'),
  ('Plymouth'),
  ('Pontiac'),
  ('Porsche'),
  ('Shelby'),
  ('Subaru'),
  ('Tesla'),
  ('Toyota'),
  ('Volkswagen'),
  ('Volvo')
ON CONFLICT (name) DO NOTHING;

-- 2. Embalagens
INSERT INTO public.packaging_types (name) VALUES ('Long Card') ON CONFLICT (name) DO NOTHING;

-- 3. Séries 2024
INSERT INTO public.series (name, year, type)
VALUES
  ('Batman', 2024, 'Mainline'),
  ('Compact Kings', 2024, 'Mainline'),
  ('Compact Kings New in Mainline', 2024, 'Mainline'),
  ('Experimotors', 2024, 'Mainline'),
  ('Factory Fresh', 2024, 'Mainline'),
  ('Fast Foodie', 2024, 'Mainline'),
  ('HW Art Cars', 2024, 'Mainline'),
  ('HW Art Cars New in Mainline', 2024, 'Mainline'),
  ('HW Celebration Racers  Happy Birthday!', 2024, 'Mainline'),
  ('HW Celebration Racers  World Autism Awareness Day', 2024, 'Mainline'),
  ('HW Celebration Racers Day of the Dead/Halloween', 2024, 'Mainline'),
  ('HW Celebration Racers Earth Day', 2024, 'Mainline'),
  ('HW Celebration Racers International Friendship Day', 2024, 'Mainline'),
  ('HW Celebration Racers International Women''s Day', 2024, 'Mainline'),
  ('HW Celebration Racers Leap Year', 2024, 'Mainline'),
  ('HW Celebration Racers Valentine''s Day', 2024, 'Mainline'),
  ('HW Celebration Racers World Braille Day', 2024, 'Mainline'),
  ('HW Celebration Racers Year of the Dragon', 2024, 'Mainline'),
  ('HW Dirt', 2024, 'Mainline'),
  ('HW Dream Garage', 2024, 'Mainline'),
  ('HW Exotics', 2024, 'Mainline'),
  ('HW Fast Transit', 2024, 'Mainline'),
  ('HW Fast Transit New in Mainline', 2024, 'Mainline'),
  ('HW First Response', 2024, 'Mainline'),
  ('HW Green Speed', 2024, 'Mainline'),
  ('HW Green Speed New in Mainline', 2024, 'Mainline'),
  ('HW Hot Trucks', 2024, 'Mainline'),
  ('HW J-Imports', 2024, 'Mainline'),
  ('HW J-Imports New in Mainline', 2024, 'Mainline'),
  ('HW Mega Bite', 2024, 'Mainline'),
  ('HW Metro', 2024, 'Mainline'),
  ('HW Modified', 2024, 'Mainline'),
  ('HW Race Day', 2024, 'Mainline'),
  ('HW Reverse Rake', 2024, 'Mainline'),
  ('HW Ride-Ons', 2024, 'Mainline'),
  ('HW Roadsters', 2024, 'Mainline'),
  ('HW Rolling Metal', 2024, 'Mainline'),
  ('HW Screen Time', 2024, 'Mainline'),
  ('HW Track Champs', 2024, 'Mainline'),
  ('HW Turbo', 2024, 'Mainline'),
  ('HW Vans', 2024, 'Mainline'),
  ('HW Xtreme Sports', 2024, 'Mainline'),
  ('HW: The ''90s', 2024, 'Mainline'),
  ('Hot Wheels Let''s Race', 2024, 'Mainline'),
  ('Muscle Mania', 2024, 'Mainline'),
  ('Quarter Mile Heroes', 2024, 'Mainline'),
  ('Rod Squad', 2024, 'Mainline'),
  ('Then and Now', 2024, 'Mainline'),
  ('Tooned', 2024, 'Mainline')
ON CONFLICT DO NOTHING;

-- 4. Categorias
INSERT INTO public.categories (name)
VALUES
  ('Batman'),
  ('Compact Kings'),
  ('Compact Kings New in Mainline'),
  ('Experimotors'),
  ('Factory Fresh'),
  ('Fast Foodie'),
  ('HW Art Cars'),
  ('HW Art Cars New in Mainline'),
  ('HW Celebration Racers  Happy Birthday!'),
  ('HW Celebration Racers  World Autism Awareness Day'),
  ('HW Celebration Racers Day of the Dead/Halloween'),
  ('HW Celebration Racers Earth Day'),
  ('HW Celebration Racers International Friendship Day'),
  ('HW Celebration Racers International Women''s Day'),
  ('HW Celebration Racers Leap Year'),
  ('HW Celebration Racers Valentine''s Day'),
  ('HW Celebration Racers World Braille Day'),
  ('HW Celebration Racers Year of the Dragon'),
  ('HW Dirt'),
  ('HW Dream Garage'),
  ('HW Exotics'),
  ('HW Fast Transit'),
  ('HW Fast Transit New in Mainline'),
  ('HW First Response'),
  ('HW Green Speed'),
  ('HW Green Speed New in Mainline'),
  ('HW Hot Trucks'),
  ('HW J-Imports'),
  ('HW J-Imports New in Mainline'),
  ('HW Mega Bite'),
  ('HW Metro'),
  ('HW Modified'),
  ('HW Race Day'),
  ('HW Reverse Rake'),
  ('HW Ride-Ons'),
  ('HW Roadsters'),
  ('HW Rolling Metal'),
  ('HW Screen Time'),
  ('HW Track Champs'),
  ('HW Turbo'),
  ('HW Vans'),
  ('HW Xtreme Sports'),
  ('HW: The ''90s'),
  ('Hot Wheels Let''s Race'),
  ('Muscle Mania'),
  ('Quarter Mile Heroes'),
  ('Rod Squad'),
  ('Then and Now'),
  ('Tooned')
ON CONFLICT (name) DO NOTHING;

-- 5. Castings (Molduras)
INSERT INTO public.castings (name, debut_year)
VALUES
  ('''07 Chevy Tahoe', 2024),
  ('''10 Camaro SS', 2024),
  ('''15 Dodge Charger SRT', 2024),
  ('''15 Jaguar F-Type Project 7', 2024),
  ('''15 Mazda MX-5 Miata', 2024),
  ('''16 Bugatti Chiron', 2024),
  ('''17 Ford GT', 2024),
  ('''18 Camaro SS', 2024),
  ('''19 Ford Ranger Raptor', 2024),
  ('''20 Toyota Tacoma', 2024),
  ('''22 Ford Maverick Custom', 2024),
  ('''23 Ram 1500', 2024),
  ('''47 Chevy Fleetline', 2024),
  ('''49 Drag Merc', 2024),
  ('''52 Chevy', 2024),
  ('''55 Chevy Bel Air Gasser', 2024),
  ('''57 Chevy', 2024),
  ('''57 Jeep FC', 2024),
  ('''59 Chevy Impala', 2024),
  ('''60s Fiat 500D Modificado', 2024),
  ('''63 Studebaker Champ', 2024),
  ('''64 Chevy Chevelle SS', 2024),
  ('''67 Camaro', 2024),
  ('''67 Chevy C10', 2024),
  ('''67 Ford GT40 Mk.IV', 2024),
  ('''67 Lotus Type 49', 2024),
  ('''68 Dodge Dart', 2024),
  ('''69 Mercury Cougar Eliminator', 2024),
  ('''70 Dodge Charger', 2024),
  ('''70 Dodge Charger R/T', 2024),
  ('''70 Plymouth Barracuda', 2024),
  ('''71 El Camino', 2024),
  ('''72 Stingray Convertible', 2024),
  ('''73 Honda Civic Custom', 2024),
  ('''73 Jeep J10', 2024),
  ('''76 Greenwood Corvette', 2024),
  ('''77 Pontiac Firebird T/A', 2024),
  ('''83 Chevy Silverado', 2024),
  ('''84 Mustang SVO', 2024),
  ('''87 Audi quattro', 2024),
  ('''87 Dodge D100', 2024),
  ('''89 Mercedes-Benz 560 SEC AMG', 2024),
  ('''90 Acura NSX', 2024),
  ('''91 GMC Syclone', 2024),
  ('''91 Mazda MX-5 Miata', 2024),
  ('''92 BMW M3', 2024),
  ('''92 Dodge Viper RT/10', 2024),
  ('''92 Ford Mustang', 2024),
  ('''92 Honda Civic EG', 2024),
  ('''94 Audi Avant RS2', 2024),
  ('''94 Toyota Supra', 2024),
  ('''95 Mazda RX-7', 2024),
  ('''96 Nissan 180SX Type X', 2024),
  ('''96 Porsche Carrera', 2024),
  ('''98 Subaru Impreza 22B STi-Version', 2024),
  ('''99 Ford F-150 SVT Lightning', 2024),
  ('1956 Corvette', 2024),
  ('1966 Triumph Tiger 100', 2024),
  ('1978 Dodge Li''l Red Express Truck', 2024),
  ('2016 Ford GT Race', 2024),
  ('2020 Koenigsegg Jesko', 2024),
  ('2020 Ram 1500 Rebel', 2024),
  ('24/Seven', 2024),
  ('5 Alarm', 2024),
  ('Ain''t Fare', 2024),
  ('Alfa Romeo GTV6 3.0', 2024),
  ('Aston Martin 1963 DB5', 2024),
  ('Aston Martin DB4GT High-Speed Edition', 2024),
  ('Audi 90 quattro', 2024),
  ('Audi RS e-tron GT', 2024),
  ('BMW 507', 2024),
  ('BMW M3 Wagon', 2024),
  ('Back to the Future Time Machine - Hover Mode', 2024),
  ('Baja Bison T5', 2024),
  ('Baja Truck', 2024),
  ('Batman &amp; Robin Batmobile', 2024),
  ('Batman Forever Batmobile', 2024),
  ('Batman: Arkham Knight Batmobile', 2024),
  ('Batman: The Animated Series', 2024),
  ('Batmobile', 2024),
  ('Birthday Burner', 2024),
  ('Bone Shaker', 2024),
  ('Boom Car', 2024),
  ('Brick and Motor', 2024),
  ('Brickin'' Delivery', 2024),
  ('Bugatti Bolide', 2024),
  ('Bumblebee', 2024),
  ('Cadillac Project GTP Hypercar', 2024),
  ('Car-de-Asada', 2024),
  ('Celero GT', 2024),
  ('Chevy Silverado', 2024),
  ('Chrysler Pacifica', 2024),
  ('Corvette C6', 2024),
  ('Corvette Stingray', 2024),
  ('Croc Rod', 2024),
  ('Custom ''53 Chevy', 2024),
  ('Custom ''68 Camaro', 2024),
  ('Custom ''72 Chevy LUV', 2024),
  ('Custom Otto', 2024),
  ('Czinger 21C', 2024),
  ('DMC DeLorean', 2024),
  ('DeLorean Alpha5', 2024),
  ('Deora II', 2024),
  ('Deora III', 2024),
  ('Dessert Drifter', 2024),
  ('Dodge Van', 2024),
  ('Dodge Viper SRT10 ACR', 2024),
  ('Donut Drifter', 2024),
  ('Draggin'' Wagon', 2024),
  ('Dragon Blaster', 2024),
  ('Dragtor', 2024),
  ('Drift''n Break', 2024),
  ('Ducati DesertX', 2024),
  ('Duck N'' Roll', 2024),
  ('Dune Daddy', 2024),
  ('El Segundo Coupe', 2024),
  ('Fiat 500e', 2024),
  ('Flippin Fast', 2024),
  ('Ford Escort RS2000', 2024),
  ('Ford F-150 Lightning Custom', 2024),
  ('Ford GT40', 2024),
  ('Ford Mustang Dark Horse', 2024),
  ('Ford Mustang Mach-E 1400', 2024),
  ('Ford Performance SuperVan 4', 2024),
  ('Formula E Gen3', 2024),
  ('GMC Hummer EV', 2024),
  ('GT-Scorcher', 2024),
  ('Glory Chaser', 2024),
  ('Gordon Murray Automotive T.50s', 2024),
  ('Grass Chomper', 2024),
  ('Group C Fantasy', 2024),
  ('Grumobile', 2024),
  ('HW Braille Racer - Twin Mill', 2024),
  ('HW Roll Cage', 2024),
  ('HW Ultimate T-Rex Transporter', 2024),
  ('HW-4-TRAC', 2024),
  ('HW450F', 2024),
  ('Heavy Hitcher', 2024),
  ('Hi-Roller II', 2024),
  ('Hirohata Merc', 2024),
  ('Honda CB750 Café', 2024),
  ('Honda Civic Si', 2024),
  ('Honda S800 Racing', 2024),
  ('Honda Super Cub Custom', 2024),
  ('Hot Wheels Ford Transit Connect', 2024),
  ('Hot Wheels High', 2024),
  ('Hotweiler', 2024),
  ('Hover Storm', 2024),
  ('Humvee', 2024),
  ('Ice Charger', 2024),
  ('Jaguar Mk1', 2024),
  ('King Kuda', 2024),
  ('Knight Draggin''', 2024),
  ('Kowloon''d Hypervan', 2024),
  ('LB-Silhouette WORKS GT Nissan 35GT-RR VER.2', 2024),
  ('Lamborghini Huracán LP 620-2 Super Trofeo', 2024),
  ('Lamborghini Huracán Sterrato', 2024),
  ('Lamborghini Sesto Elemento', 2024),
  ('Land Rover Series II', 2024),
  ('Later Crater', 2024),
  ('Layin'' Lowrider', 2024),
  ('Limited Grip', 2024),
  ('Lolux', 2024),
  ('Loopster', 2024),
  ('Mad Mike Drift Attack', 2024),
  ('Mailed It!', 2024),
  ('Max Steel', 2024),
  ('Mazda 787B', 2024),
  ('Mazda Autozam', 2024),
  ('Mazda RX-3', 2024),
  ('Mazda RX-7', 2024),
  ('McLaren F1', 2024),
  ('McLaren P1', 2024),
  ('McLaren Solus GT', 2024),
  ('Mercedes-Benz Unimog 1300L', 2024),
  ('Mighty K', 2024),
  ('Minecart', 2024),
  ('Mitsubishi Pajero Evolution', 2024),
  ('Mo-Stash', 2024),
  ('Mod Rod', 2024),
  ('Mod Speeder', 2024),
  ('Monster High Ghoul Mobile', 2024),
  ('Mustang Funny Car', 2024),
  ('Nissan Patrol Custom', 2024),
  ('Nissan Skyline 2000GT-R LBWK', 2024),
  ('Nissan Skyline GT-R (BCNR33)', 2024),
  ('Nissan Skyline RS (KDR30)', 2024),
  ('Pagani Utopia', 2024),
  ('Pagani Zonda R', 2024),
  ('Piranha Terror', 2024),
  ('Pontiac Aztek Custom', 2024),
  ('Porsche 904 Carrera GTS', 2024),
  ('Porsche 911 Carrera', 2024),
  ('Porsche 911 Carrera RS 2.7', 2024),
  ('Porsche 911 Rallye', 2024),
  ('Porsche 911 Turbo 3.6 (964)', 2024),
  ('Porsche 928S Safari', 2024),
  ('Propper Chopper', 2024),
  ('Proton Saga', 2024),
  ('Punk Rod', 2024),
  ('Purple Passion', 2024),
  ('Quick Bite', 2024),
  ('RRRoadster', 2024),
  ('Rally Speciale', 2024),
  ('Rapid Pulse', 2024),
  ('Ravenger S/T', 2024),
  ('Retro-Active', 2024),
  ('Rink Racer', 2024),
  ('Road Bandit', 2024),
  ('Rockin'' Railer', 2024),
  ('Rodger Dodger', 2024),
  ('Rollin'' Solo', 2024),
  ('Runway Res-Q', 2024),
  ('Shark Bite', 2024),
  ('Shelby Cobra "Daytona" Coupe', 2024),
  ('Shelby Cobra 427 S/C', 2024),
  ('Silverado EV RST', 2024),
  ('Skate Grom', 2024),
  ('Small Bloc', 2024),
  ('Speed Bump', 2024),
  ('Speed Dozer', 2024),
  ('Street Wiener', 2024),
  ('Supercharged', 2024),
  ('Surf Duty', 2024),
  ('Surf''s Up', 2024),
  ('Surfin'' School Bus', 2024),
  ('Sushi Tuner', 2024),
  ('T-Rextroyer', 2024),
  ('Tanknator', 2024),
  ('Terra-Tracktyl', 2024),
  ('Tesla Cybertruck', 2024),
  ('Tesla Model S Plaid', 2024),
  ('Tesla Model Y', 2024),
  ('Tooligan', 2024),
  ('Total Disposal', 2024),
  ('Toyota GR86 Cup', 2024),
  ('Toyota Supra', 2024),
  ('Track Dwagon', 2024),
  ('Tred Shredder', 2024),
  ('Trouble Decker', 2024),
  ('U.S.S. Enterprise NCC-1701', 2024),
  ('VW T3 Custom', 2024),
  ('Vespa 90 SS Super Sprint (1966)', 2024),
  ('Volkswagen ID. Buzz', 2024),
  ('Volkswagen T2 Pickup', 2024),
  ('Volvo P1800 Gasser', 2024),
  ('Volvo XC40 Recharge', 2024),
  ('West Coast Flyer', 2024),
  ('Wheelie Chair', 2024)
ON CONFLICT (name) DO NOTHING;

-- 6. Modelos Cars e Identificadores
DO $$
DECLARE
    v_car_id UUID;
    v_casting_id UUID;
    v_mfg_id UUID;
    v_series_id UUID;
    v_cat_id UUID;
    v_pkg_id UUID;
BEGIN
    SELECT id INTO v_pkg_id FROM public.packaging_types WHERE name = 'Long Card' LIMIT 1;

    -- Modelo 001/250: Mazda Autozam
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda Autozam' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mazda Autozam' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda Autozam', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '001/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY51', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4d/TexasToot.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 002/250: Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Batmobile', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '002/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB21', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2e/HTB21-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 003/250: Monster High Ghoul Mobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Monster High Ghoul Mobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Monster High Ghoul Mobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Monster High Ghoul Mobile', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '003/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY45', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c4/GhoulMobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 004/250: U.S.S. Enterprise NCC-1701
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'U.S.S. Enterprise NCC-1701' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'U.S.S. Enterprise NCC-1701' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'U.S.S. Enterprise NCC-1701', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '004/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB32', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8a/2024-004_HTB32_USS_ENTERPRISE_open-1.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 005/250: Hot Wheels High
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hot Wheels High' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fast Transit' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fast Transit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Hot Wheels High' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hot Wheels High', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '005/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB42', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e3/HTB42.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 006/250: Custom Otto
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom Otto' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Custom Otto' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom Otto', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '006/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB49', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/35/HTB49.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 007/250: '15 Dodge Charger SRT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''15 Dodge Charger SRT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''15 Dodge Charger SRT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''15 Dodge Charger SRT', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '007/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB56', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/54/HTB56.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 008/250: '47 Chevy Fleetline
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''47 Chevy Fleetline' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''47 Chevy Fleetline' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''47 Chevy Fleetline', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '008/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF15', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f8/ChevroletFleetline.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 009/250: Runway Res-Q
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Runway Res-Q' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Runway Res-Q' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Runway Res-Q', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '009/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB57', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e2/Runway_Res-Q_HTB57.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 010/250: Mod Speeder
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mod Speeder' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mod Speeder' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mod Speeder', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '010/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB64', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0e/HTB64_carded.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 011/250: '76 Greenwood Corvette
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''76 Greenwood Corvette' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''76 Greenwood Corvette' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''76 Greenwood Corvette', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '011/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB67', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a1/HTB67.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 012/250: Ford GT40
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford GT40' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ford GT40' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford GT40', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '012/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC51', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/dc/AutoliteFord.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 013/250: Czinger 21C
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Czinger 21C' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Czinger 21C' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Czinger 21C', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '013/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY49', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bd/Czinger21C.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 014/250: Volvo XC40 Recharge
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Volvo XC40 Recharge' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volvo' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Volvo XC40 Recharge' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Volvo XC40 Recharge', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '014/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB79', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/08/HTB79.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 015/250: Tesla Model Y
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tesla Model Y' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Tesla' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Tesla Model Y' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tesla Model Y', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '015/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB80', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ea/HTB80.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 016/250: Skate Grom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Skate Grom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Xtreme Sports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Xtreme Sports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Skate Grom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Skate Grom', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '016/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB96', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e5/HTB96.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 017/250: Surf's Up
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Surf''s Up' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Xtreme Sports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Xtreme Sports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Surf''s Up' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Surf''s Up', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '017/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB97', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c6/SurfsUp2024.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 018/250: Shark Bite
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Shark Bite' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mega Bite' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mega Bite' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Shark Bite' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Shark Bite', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '018/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC01', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5e/SharkBite2024.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 019/250: Max Steel
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Max Steel' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Roadsters' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Roadsters' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Max Steel' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Max Steel', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '019/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC12', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/de/Max_Steel_2024_HW_Roadsters.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 020/250: '70 Plymouth Barracuda
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Plymouth Barracuda' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Plymouth' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Roadsters' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Roadsters' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''70 Plymouth Barracuda' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Plymouth Barracuda', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '020/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC13', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/77/1st_2024_%2770_Plymouth_Barracuda.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 021/250: Mighty K
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mighty K' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mighty K' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mighty K', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '021/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC17', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4c/Surfin%27K.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 022/250: Fiat 500e
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Fiat 500e' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Fiat' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Fiat 500e' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Fiat 500e', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '022/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC18', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/89/FiatElectric500.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 023/250: Ford Escort RS2000
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Escort RS2000' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ford Escort RS2000' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Escort RS2000', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '023/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC48', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/77/FordEscortRS.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 024/250: 2020 Ram 1500 Rebel
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2020 Ram 1500 Rebel' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '2020 Ram 1500 Rebel' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2020 Ram 1500 Rebel', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '024/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC52', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1d/HTC52.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 025/250: Brick and Motor
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Brick and Motor' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Brick and Motor' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Brick and Motor', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '025/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC55', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1b/BrickAndMotor2024.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 026/250: Punk Rod
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Punk Rod' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Punk Rod' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Punk Rod', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '026/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY48', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d0/PunkRod.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 027/250: HW Braille Racer - Twin Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW Braille Racer - Twin Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers World Braille Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers World Braille Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'HW Braille Racer - Twin Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW Braille Racer - Twin Mill', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '027/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY95', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/32/CelebrationMill.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 028/250: Lolux
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lolux' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Lolux' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lolux', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '028/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB65', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a8/LOLux2024.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 029/250: 1956 Corvette
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1956 Corvette' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '1956 Corvette' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1956 Corvette', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '029/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB37', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/89/KenCorvette.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 030/250: Road Bandit
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Road Bandit' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fast Transit' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fast Transit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Road Bandit' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Road Bandit', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '030/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB43', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/96/Mainline_2024_Road_Bandit_MF_Dark_Blue_Malaysia_HTB43.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 031/250: Ain't Fare
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ain''t Fare' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fast Transit' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fast Transit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ain''t Fare' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ain''t Fare', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '031/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF16', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/80/WorldTourFare.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 032/250: '18 Camaro SS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''18 Camaro SS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''18 Camaro SS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''18 Camaro SS', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '032/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB50', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/75/HTB50-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 033/250: Humvee
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Humvee' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Humvee' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Humvee', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '033/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB58', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5d/Humvee_-_2024_-_HW_First_Response_-_HTB58.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 034/250: Nissan Patrol Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Patrol Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Nissan Patrol Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Patrol Custom', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '034/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB59', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/af/RescuePatrol.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 035/250: Drift'n Break
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Drift''n Break' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Drift''n Break' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Drift''n Break', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '035/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY53', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/35/Drift%27nBrake.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 036/250: Audi RS e-tron GT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Audi RS e-tron GT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Audi RS e-tron GT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Audi RS e-tron GT', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '036/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB81', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/db/2024AudiRSe-tronGT.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 037/250: Ford F-150 Lightning Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford F-150 Lightning Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ford F-150 Lightning Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford F-150 Lightning Custom', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '037/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB82', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/53/FordLightningCustom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 038/250: '87 Dodge D100
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''87 Dodge D100' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''87 Dodge D100' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''87 Dodge D100', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '038/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB89', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/96/2024DodgeD100.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 039/250: Croc Rod
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Croc Rod' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mega Bite' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mega Bite' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Croc Rod' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Croc Rod', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '039/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC02', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/07/Croc_Rod_HCT02.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 040/250: Corvette C6
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Corvette C6' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Roadsters' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Roadsters' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Corvette C6' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Corvette C6', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '040/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC14', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9f/2009CorvetteConvertible.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 041/250: Proton Saga
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Proton Saga' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Proton Saga' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Proton Saga', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '041/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY46', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/31/1985ProtonSaga.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 042/250: Volkswagen T2 Pickup
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Volkswagen T2 Pickup' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volkswagen' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Volkswagen T2 Pickup' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Volkswagen T2 Pickup', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '042/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC28', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2a/VWPickup.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 043/250: '19 Ford Ranger Raptor
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''19 Ford Ranger Raptor' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''19 Ford Ranger Raptor' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''19 Ford Ranger Raptor', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '043/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC29', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d7/HKSRaptor.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 044/250: Nissan Skyline RS (KDR30)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline RS (KDR30)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Nissan Skyline RS (KDR30)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline RS (KDR30)', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '044/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC40', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2d/NissanSkylineRS.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 045/250: Honda Civic Si
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda Civic Si' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Honda Civic Si' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda Civic Si', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '045/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC41', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ad/2000HondaCivic.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 046/250: Porsche 911 Carrera RS 2.7
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Carrera RS 2.7' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Porsche 911 Carrera RS 2.7' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Carrera RS 2.7', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '046/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC49', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/39/1973Porsche911.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 047/250: '72 Stingray Convertible
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''72 Stingray Convertible' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''72 Stingray Convertible' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''72 Stingray Convertible', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '047/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC50', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/42/StingrayConvertible.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 048/250: Loopster
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Loopster' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Loopster' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Loopster', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '048/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC56', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/ca/2024ML-048B_%28Large%29.JPG/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 049/250: Honda CB750 Café
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda CB750 Café' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Honda CB750 Café' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda CB750 Café', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '049/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC61', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8a/Honda_CB750_Cafe_-_2024_-_Rod_Squad_-_HTC61.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 050/250: Limited Grip
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Limited Grip' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Limited Grip' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Limited Grip', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '050/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC62', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c4/HTC62_01.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 051/250: El Segundo Coupe
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'El Segundo Coupe' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Turbo' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Turbo' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'El Segundo Coupe' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'El Segundo Coupe', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '051/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC63', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0e/TurboCoupe.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 052/250: Knight Draggin'
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Knight Draggin''' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Year of the Dragon' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Year of the Dragon' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Knight Draggin''' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Knight Draggin''', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '052/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY96', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/31/Knight_Draggin%27_-_2024_-_HW_Celebration_Racers_-_HRY96.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 053/250: 1978 Dodge Li'l Red Express Truck
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1978 Dodge Li''l Red Express Truck' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Valentine''s Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Valentine''s Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '1978 Dodge Li''l Red Express Truck' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1978 Dodge Li''l Red Express Truck', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '053/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY97', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/27/Dodge_Li%27l_Red_Express_Truck_1978_-_2024_-_HW_Celebration_Racers_-_HRY97.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 054/250: Batman &amp; Robin Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Batman &amp; Robin Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Batman &amp; Robin Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Batman &amp; Robin Batmobile', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '054/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY54', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/77/GeorgeClooneyBatmobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 055/250: HW Ultimate T-Rex Transporter
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW Ultimate T-Rex Transporter' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'HW Ultimate T-Rex Transporter' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW Ultimate T-Rex Transporter', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '055/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY50', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/29/T-RexTransporter.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 056/250: West Coast Flyer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'West Coast Flyer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fast Transit New in Mainline' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fast Transit New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'West Coast Flyer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'West Coast Flyer', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '056/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB44', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b2/HWBullet.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 057/250: '07 Chevy Tahoe
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''07 Chevy Tahoe' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''07 Chevy Tahoe' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''07 Chevy Tahoe', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '057/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB60', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/22/Chevy_Tahoe_07_-_2024_-_HW_First_Response_-_HTB60.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 058/250: Baja Bison T5
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Baja Bison T5' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Baja Bison T5' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Baja Bison T5', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '058/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB61', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fc/FirstResponseBison.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 059/250: Mad Mike Drift Attack
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mad Mike Drift Attack' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mad Mike Drift Attack' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mad Mike Drift Attack', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '059/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB66', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/dc/GrayscaleDriftAttack.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 060/250: Back to the Future Time Machine - Hover Mode
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Back to the Future Time Machine - Hover Mode' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Back to the Future Time Machine - Hover Mode' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Back to the Future Time Machine - Hover Mode', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '060/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB33', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b0/TimeMachineHoverMode.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 061/250: Mod Rod
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mod Rod' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mod Rod' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mod Rod', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '061/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB71', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/77/Mod_Rod_-_2024_-_HW_Art_Cars_-_HTB71.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 062/250: GMC Hummer EV
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'GMC Hummer EV' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'GMC Hummer EV' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'GMC Hummer EV', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '062/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB83', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8c/HTB83_01.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 063/250: '55 Chevy Bel Air Gasser
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''55 Chevy Bel Air Gasser' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''55 Chevy Bel Air Gasser' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''55 Chevy Bel Air Gasser', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '063/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB90', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/74/TheCollector.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 064/250: Wheelie Chair
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Wheelie Chair' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Xtreme Sports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Xtreme Sports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Wheelie Chair' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Wheelie Chair', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '064/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB98', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/dc/Wheelchair2024.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 065/250: Surfin' School Bus
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Surfin'' School Bus' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Xtreme Sports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Xtreme Sports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Surfin'' School Bus' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Surfin'' School Bus', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '065/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB99', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5c/SurfinSchoolBus2024.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 066/250: Hotweiler
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hotweiler' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mega Bite' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mega Bite' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Hotweiler' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hotweiler', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '066/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC03', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4a/Hotweiler_-_2024_-_HW_Mega_Bite_-_HTC03.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 067/250: BMW 507
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'BMW 507' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'BMW' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Roadsters' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Roadsters' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'BMW 507' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'BMW 507', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '067/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC15', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/23/BMW507Racer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 068/250: '57 Jeep FC
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''57 Jeep FC' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jeep' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''57 Jeep FC' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''57 Jeep FC', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '068/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC30', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b4/JeepFCCustom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 069/250: '15 Mazda MX-5 Miata
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''15 Mazda MX-5 Miata' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''15 Mazda MX-5 Miata' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''15 Mazda MX-5 Miata', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '069/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC42', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c4/2015MazdaMX-5.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 070/250: McLaren Solus GT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'McLaren Solus GT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'McLaren' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'McLaren Solus GT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'McLaren Solus GT', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '070/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB68', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/81/McLarenSolus.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 071/250: Vespa 90 SS Super Sprint (1966)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Vespa 90 SS Super Sprint (1966)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Vespa 90 SS Super Sprint (1966)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Vespa 90 SS Super Sprint (1966)', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '071/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY52', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a5/Vespa.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 072/250: Tooligan
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tooligan' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Tooligan' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tooligan', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '072/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF17', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a3/HWTooligan.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 073/250: Mo-Stash
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mo-Stash' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mo-Stash' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mo-Stash', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '073/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY56', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f6/Mo-Stash.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 074/250: Group C Fantasy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Group C Fantasy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Group C Fantasy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Group C Fantasy', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '074/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC74', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e2/GroupCFantasyRaceCar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 075/250: Rockin' Railer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rockin'' Railer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Rockin'' Railer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rockin'' Railer', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '075/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC75', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/15/HTC75_01.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 076/250: RRRoadster
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'RRRoadster' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers International Women''s Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers International Women''s Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'RRRoadster' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'RRRoadster', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '076/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY98', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a1/RRRoadster_-_2024_-_HW_Celebration_Racers_-_HRY98.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 077/250: Rodger Dodger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rodger Dodger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Leap Year' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Leap Year' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Rodger Dodger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rodger Dodger', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '077/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY99', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/ca/Rodger_Dodger_-_2024_-_HW_Celebration_Racers_-_HRY99.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 078/250: Ice Charger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ice Charger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ice Charger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ice Charger', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '078/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB34', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/56/HTB34-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 079/250: Glory Chaser
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Glory Chaser' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Glory Chaser' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Glory Chaser', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '079/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB51', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/36/Mainline_2024_Glory_Chaser_Burnt_Orange_Malaysia_HTB51.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 080/250: Mazda RX-7
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda RX-7' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mazda RX-7' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda RX-7', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '080/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB62', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b4/HTB62-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 081/250: Custom '68 Camaro
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''68 Camaro' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Custom ''68 Camaro' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''68 Camaro', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '081/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB69', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ed/PunkCamaro.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 082/250: '89 Mercedes-Benz 560 SEC AMG
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''89 Mercedes-Benz 560 SEC AMG' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mercedes-Benz' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''89 Mercedes-Benz 560 SEC AMG' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''89 Mercedes-Benz 560 SEC AMG', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '082/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB70', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d3/HTB70-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 083/250: '67 Chevy C10
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Chevy C10' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''67 Chevy C10' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Chevy C10', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '083/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB72', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/45/Mainline_2024_%2767_Chevy_C10_Tan-Brown_Malaysia_HTB72.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 084/250: '67 Camaro
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Camaro' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars New in Mainline' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''67 Camaro' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Camaro', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '084/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB74', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6a/ArtCarsCamaro.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 085/250: DeLorean Alpha5
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'DeLorean Alpha5' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed New in Mainline' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'DeLorean Alpha5' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'DeLorean Alpha5', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '085/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB84', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9d/2024DeLorean.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 086/250: '10 Camaro SS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''10 Camaro SS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''10 Camaro SS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''10 Camaro SS', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '086/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB63', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1e/10_camaro_ss_2024.png/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 087/250: Piranha Terror
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Piranha Terror' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mega Bite' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mega Bite' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Piranha Terror' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Piranha Terror', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '087/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC04', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6d/Piranha_Terror_-_2024_-_HW_Mega_Bite_-_HTC04.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 088/250: Street Wiener
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Street Wiener' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Street Wiener' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Street Wiener', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '088/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC07', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/61/Street_Wiener_-_2024_-_Hot_Wheels_Let_s_Race_-_HTC07.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 089/250: GT-Scorcher
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'GT-Scorcher' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'GT-Scorcher' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'GT-Scorcher', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '089/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC08', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bd/GT-Scorcher_-_2024_-_Hoy_Wheels_Let_s_Race_-_HTC08.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 090/250: '73 Honda Civic Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''73 Honda Civic Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''73 Honda Civic Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''73 Honda Civic Custom', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '090/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC19', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/68/1973HondaCivic.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 091/250: '73 Jeep J10
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''73 Jeep J10' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jeep' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''73 Jeep J10' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''73 Jeep J10', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '091/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC31', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fc/2024_%2773_Jeep_J10.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 092/250: Land Rover Series II
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Land Rover Series II' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Land Rover' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Land Rover Series II' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Land Rover Series II', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '092/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC32', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/73/Mainline_2024_Land_Rover_Series_II_Light_Gray_Malaysia_HTC32.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 093/250: Grass Chomper
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Grass Chomper' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Grass Chomper' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Grass Chomper', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '093/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC37', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/31/Grass_Chomper_-_2024_-_HW_Ride-Ons_-_HTC37.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 094/250: Boom Car
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Boom Car' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Boom Car' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Boom Car', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '094/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC38', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/89/BoomCar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 095/250: '92 Honda Civic EG
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''92 Honda Civic EG' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports New in Mainline' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''92 Honda Civic EG' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''92 Honda Civic EG', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '095/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC43', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e0/HTC43.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 096/250: Nissan Skyline GT-R (BCNR33)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline GT-R (BCNR33)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Nissan Skyline GT-R (BCNR33)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline GT-R (BCNR33)', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '096/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC44', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/cc/HTC44-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 097/250: '23 Ram 1500
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''23 Ram 1500' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''23 Ram 1500' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''23 Ram 1500', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '097/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HXB33', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/60/%2723Ram1500.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 098/250: Alfa Romeo GTV6 3.0
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Alfa Romeo GTV6 3.0' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Alfa Romeo' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Alfa Romeo GTV6 3.0' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Alfa Romeo GTV6 3.0', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '098/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC53', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/41/AlfaRomeoAlfetta.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 099/250: Pagani Zonda R
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pagani Zonda R' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pagani' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Pagani Zonda R' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pagani Zonda R', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '099/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC78', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/81/RacingZonda.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 100/250: Custom '53 Chevy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''53 Chevy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Custom ''53 Chevy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''53 Chevy', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '100/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF18', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/31/2024_Custom_%2753_Chevy.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 101/250: HW-4-TRAC
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW-4-TRAC' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'HW-4-TRAC' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW-4-TRAC', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '101/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC76', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/93/4Trac2024Red.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 102/250: '87 Audi quattro
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''87 Audi quattro' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Turbo' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Turbo' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''87 Audi quattro' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''87 Audi quattro', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '102/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY55', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f2/%2787Audiquattro.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 103/250: Flippin Fast
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Flippin Fast' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers  World Autism Awareness Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers  World Autism Awareness Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Flippin Fast' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Flippin Fast', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '103/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY59', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9c/Flippin%27Fast.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 104/250: Brickin' Delivery
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Brickin'' Delivery' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Brickin'' Delivery' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Brickin'' Delivery', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '104/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB13', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/71/Bricking_delivery_2024.png/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 105/250: Surf Duty
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Surf Duty' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Surf Duty' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Surf Duty', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '105/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB14', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/06/Mainline_2024_Surf_Duty_Blue_Malaysia_HTB14.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 106/250: Batman Forever Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Batman Forever Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Batman Forever Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Batman Forever Batmobile', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '106/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF19', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e0/2024_Batman_Forever_Batmobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 107/250: Aston Martin 1963 DB5
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Aston Martin 1963 DB5' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Aston Martin' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Aston Martin 1963 DB5' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Aston Martin 1963 DB5', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '107/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB36', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f1/HTB36-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 108/250: '70 Dodge Charger R/T
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Dodge Charger R/T' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''70 Dodge Charger R/T' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Dodge Charger R/T', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '108/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB76', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bf/Dodge_Charger_RT_1970_%281f%29_-_HotWheels.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 109/250: Corvette Stingray
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Corvette Stingray' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Corvette Stingray' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Corvette Stingray', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '109/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB52', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/49/Stingray._2024_HW_Dream_Garage%2C_Red.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 110/250: Silverado EV RST
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Silverado EV RST' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Silverado EV RST' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Silverado EV RST', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '110/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY63', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f3/SilveradoEVRST.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 111/250: Pontiac Aztek Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pontiac Aztek Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pontiac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Pontiac Aztek Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pontiac Aztek Custom', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '111/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY61', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/55/PontiacAztekCustom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 112/250: Mustang Funny Car
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mustang Funny Car' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mustang Funny Car' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mustang Funny Car', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '112/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB73', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8f/HTB73.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 113/250: Layin' Lowrider
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Layin'' Lowrider' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Layin'' Lowrider' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Layin'' Lowrider', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '113/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB91', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0a/2024LayinLowriderBlack.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 114/250: T-Rextroyer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'T-Rextroyer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mega Bite' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mega Bite' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'T-Rextroyer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'T-Rextroyer', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '114/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC05', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1a/TRex2025.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 115/250: Baja Truck
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Baja Truck' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Baja Truck' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Baja Truck', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '115/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC09', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/83/Mainline_2024_Baja_Truck_HTC09.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 116/250: '15 Jaguar F-Type Project 7
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''15 Jaguar F-Type Project 7' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jaguar' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Roadsters' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Roadsters' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''15 Jaguar F-Type Project 7' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''15 Jaguar F-Type Project 7', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '116/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC16', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e7/%2715_Jaguar_F-Type_Project_7_HW_Roadsters_2024_White.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 117/250: '60s Fiat 500D Modificado
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''60s Fiat 500D Modificado' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Fiat' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings New in Mainline' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''60s Fiat 500D Modificado' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''60s Fiat 500D Modificado', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '117/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC20', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/23/1966Fiat500D.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 118/250: Custom '72 Chevy LUV
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''72 Chevy LUV' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Custom ''72 Chevy LUV' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''72 Chevy LUV', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '118/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC33', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/57/HTC33-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 119/250: Tanknator
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tanknator' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Tanknator' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tanknator', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '119/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC39', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/74/Tanknator2024.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 120/250: '91 Mazda MX-5 Miata
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''91 Mazda MX-5 Miata' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''91 Mazda MX-5 Miata' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''91 Mazda MX-5 Miata', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '120/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC47', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ac/1991MazdaMX-5Miata.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 121/250: '57 Chevy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''57 Chevy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''57 Chevy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''57 Chevy', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '121/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB75', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d8/Mainline_2024_%2757_Chevy_Black_Malaysia_HTB75.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 122/250: Shelby Cobra "Daytona" Coupe
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Shelby Cobra "Daytona" Coupe' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Shelby' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Shelby Cobra "Daytona" Coupe' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Shelby Cobra "Daytona" Coupe', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '122/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC77', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/50/GulfCoupe.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 123/250: Cadillac Project GTP Hypercar
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Cadillac Project GTP Hypercar' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Cadillac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Turbo' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Turbo' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Cadillac Project GTP Hypercar' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Cadillac Project GTP Hypercar', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '123/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY60', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/66/CadillacGTP.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 124/250: Supercharged
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Supercharged' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Earth Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Earth Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Supercharged' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Supercharged', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '124/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB00', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/01/Supercharged_Earth_Day.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 125/250: 5 Alarm
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '5 Alarm' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '5 Alarm' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '5 Alarm', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '125/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB15', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/85/HTB15-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 126/250: Trouble Decker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Trouble Decker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fast Transit' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fast Transit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Trouble Decker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Trouble Decker', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '126/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB45', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2c/PenangDecker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 127/250: Jaguar Mk1
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Jaguar Mk1' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jaguar' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Jaguar Mk1' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Jaguar Mk1', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '127/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY80', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f1/JaguarMk1.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 128/250: Ford Performance SuperVan 4
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Performance SuperVan 4' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ford Performance SuperVan 4' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Performance SuperVan 4', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '128/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY90', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/dd/FordSuperVan4.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 129/250: Ford Mustang Mach-E 1400
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Mustang Mach-E 1400' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Green Speed' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Green Speed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ford Mustang Mach-E 1400' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Mustang Mach-E 1400', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '129/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF20', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/82/2024_Ford_Mustang_Mach-E_1400.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 130/250: HW450F
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW450F' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Xtreme Sports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Xtreme Sports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'HW450F' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW450F', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '130/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC00', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ad/HW450FSports.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 131/250: Terra-Tracktyl
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Terra-Tracktyl' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Terra-Tracktyl' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Terra-Tracktyl', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '131/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY65', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2f/Terra-Tracktyl.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 132/250: '71 El Camino
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''71 El Camino' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''71 El Camino' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''71 El Camino', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '132/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC34', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a7/71_El_Camino_Violet_2024.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 133/250: '94 Audi Avant RS2
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''94 Audi Avant RS2' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''94 Audi Avant RS2' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''94 Audi Avant RS2', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '133/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC54', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bd/HTC54-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 134/250: Porsche 911 Carrera
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Carrera' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Porsche 911 Carrera' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Carrera', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '134/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY64', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/ba/PorscheCarreraKeychain.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 135/250: Heavy Hitcher
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Heavy Hitcher' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Heavy Hitcher' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Heavy Hitcher', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '135/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB16', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/00/TWUHitcher.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 136/250: Minecart
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Minecart' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Minecart' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Minecart', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '136/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB38', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/07/HTB38-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 137/250: Rapid Pulse
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rapid Pulse' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Rapid Pulse' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rapid Pulse', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '137/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY68', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/69/RapidPulse.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 138/250: BMW M3 Wagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'BMW M3 Wagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'BMW' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'BMW M3 Wagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'BMW M3 Wagon', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '138/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY67', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/19/BMWM3Wagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 139/250: '52 Chevy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''52 Chevy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''52 Chevy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''52 Chevy', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '139/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC36', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a2/1952ChevyTruck.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 140/250: Dragon Blaster
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Dragon Blaster' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Dragon Blaster' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Dragon Blaster', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '140/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC10', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/86/DragonBlasterRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 141/250: Draggin' Wagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Draggin'' Wagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Draggin'' Wagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Draggin'' Wagon', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '141/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF21', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5e/2024_Draggin_Wagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 142/250: '68 Dodge Dart
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''68 Dodge Dart' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''68 Dodge Dart' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''68 Dodge Dart', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '142/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC57', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9f/HTC57-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 143/250: Hirohata Merc
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hirohata Merc' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Hirohata Merc' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hirohata Merc', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '143/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY69', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/eb/HirohataMerc.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 144/250: Audi 90 quattro
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Audi 90 quattro' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Turbo' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Turbo' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Audi 90 quattro' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Audi 90 quattro', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '144/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC64', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/ff/HTC64-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 145/250: Mazda 787B
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda 787B' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mazda 787B' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda 787B', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '145/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC79', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/14/Charge787B.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 146/250: Birthday Burner
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Birthday Burner' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers  Happy Birthday!' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers  Happy Birthday!' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Birthday Burner' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Birthday Burner', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '146/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY72', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/62/BirthdayBurner.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 147/250: Speed Dozer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Speed Dozer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Speed Dozer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Speed Dozer', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '147/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB17', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e8/Speed-Dozer-147-Green.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 148/250: Propper Chopper
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Propper Chopper' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Propper Chopper' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Propper Chopper', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '148/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB18', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/68/HTB18-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 149/250: Batman: Arkham Knight Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Batman: Arkham Knight Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Batman: Arkham Knight Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Batman: Arkham Knight Batmobile', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '149/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB22', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d1/HTB22-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 150/250: Donut Drifter
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Donut Drifter' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Donut Drifter' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Donut Drifter', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '150/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB46', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1a/Donut_drifter_green.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 151/250: Purple Passion
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Purple Passion' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Purple Passion' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Purple Passion', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '151/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF22', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5e/ArtPassion.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 152/250: King Kuda
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'King Kuda' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'King Kuda' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'King Kuda', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '152/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB77', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b8/Kingkudaartcar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 153/250: Volvo P1800 Gasser
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Volvo P1800 Gasser' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volvo' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Volvo P1800 Gasser' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Volvo P1800 Gasser', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '153/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB92', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8f/HTB92-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 154/250: Rollin' Solo
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rollin'' Solo' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Rollin'' Solo' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rollin'' Solo', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '154/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC06', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8c/RollinSoloTrackChampsLoose.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 155/250: '63 Studebaker Champ
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''63 Studebaker Champ' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''63 Studebaker Champ' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''63 Studebaker Champ', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '155/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC35', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/05/%2763Studebaker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 156/250: Mazda RX-3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda RX-3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mazda RX-3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda RX-3', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '156/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY71', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e4/%27ToonedMazdaRX-3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 157/250: '64 Chevy Chevelle SS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''64 Chevy Chevelle SS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''64 Chevy Chevelle SS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''64 Chevy Chevelle SS', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '157/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC58', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/30/Mainline_2024_%2764_Chevy_Chevelle_SS_Red_Malaysia_HTC58.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 158/250: Porsche 904 Carrera GTS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 904 Carrera GTS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Porsche 904 Carrera GTS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 904 Carrera GTS', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '158/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY73', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c2/Porsche904.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 159/250: Honda Super Cub Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda Super Cub Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Honda Super Cub Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda Super Cub Custom', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '159/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF23', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bd/HondaMetroBike.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 160/250: Total Disposal
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Total Disposal' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Total Disposal' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Total Disposal', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '160/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB19', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/70/1st_2024_Total_Disposal.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 161/250: '70 Dodge Charger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Dodge Charger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''70 Dodge Charger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Dodge Charger', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '161/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB40', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4f/161_2024_SC_%2770_Dodge_Charger.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 162/250: Dessert Drifter
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Dessert Drifter' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Dessert Drifter' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Dessert Drifter', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '162/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB47', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9f/20240703_130555.png/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 163/250: Speed Bump
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Speed Bump' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars New in Mainline' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Speed Bump' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Speed Bump', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '163/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB78', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e1/1st_2024_Speed_Bump.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 164/250: Mailed It!
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mailed It!' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mailed It!' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mailed It!', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '164/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY82', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b9/MailedIt.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 165/250: McLaren P1
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'McLaren P1' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'McLaren' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Quarter Mile Heroes' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Quarter Mile Heroes' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'McLaren P1' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'McLaren P1', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '165/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB85', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/aa/2013McLarenP1.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 166/250: Later Crater
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Later Crater' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Later Crater' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Later Crater', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '166/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY75', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ee/LaterCrater.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 167/250: Duck N' Roll
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Duck N'' Roll' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Duck N'' Roll' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Duck N'' Roll', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '167/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC11', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fa/Duck%27nRoll.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 168/250: Rink Racer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rink Racer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Rink Racer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rink Racer', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '168/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY79', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ae/RinkRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 169/250: Mitsubishi Pajero Evolution
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mitsubishi Pajero Evolution' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mitsubishi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mitsubishi Pajero Evolution' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mitsubishi Pajero Evolution', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '169/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC45', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ef/HTC45.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 170/250: '95 Mazda RX-7
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''95 Mazda RX-7' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''95 Mazda RX-7' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''95 Mazda RX-7', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '170/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC46', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c5/MuRX-7.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 171/250: '69 Mercury Cougar Eliminator
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''69 Mercury Cougar Eliminator' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''69 Mercury Cougar Eliminator' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''69 Mercury Cougar Eliminator', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '171/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC59', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d2/1969_Mercury_Cougar.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 172/250: Porsche 911 Rallye
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Rallye' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Turbo' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Turbo' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Porsche 911 Rallye' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Rallye', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '172/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY70', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/39/Porsche911Dakar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 173/250: 24/Seven
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '24/Seven' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers International Friendship Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers International Friendship Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '24/Seven' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '24/Seven', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '173/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB01', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ef/HTB01.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 174/250: '96 Porsche Carrera
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''96 Porsche Carrera' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''96 Porsche Carrera' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''96 Porsche Carrera', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '174/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB03', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/00/1996PorscheCarrera.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 175/250: '90 Acura NSX
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''90 Acura NSX' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''90 Acura NSX' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''90 Acura NSX', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '175/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB04', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3c/1990AcuraNSX.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 176/250: Dragtor
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Dragtor' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pontiac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Dragtor' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Dragtor', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '176/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB20', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e0/Mainline_2024_Dragtor_Pink_Malaysia_HTB20.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 177/250: Batman: The Animated Series
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Batman: The Animated Series' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Batman: The Animated Series' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Batman: The Animated Series', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '177/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB23', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/de/20240804_101630_25%25.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 178/250: Mercedes-Benz Unimog 1300L
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mercedes-Benz Unimog 1300L' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mercedes-Benz' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Mercedes-Benz Unimog 1300L' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mercedes-Benz Unimog 1300L', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '178/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB24', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d9/Mainline_2024_Mercedes-Benz_Unimog_1300L_MF_Green_Malaysia_HTB24.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 179/250: Rally Speciale
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rally Speciale' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Rally Speciale' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rally Speciale', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '179/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB25', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c8/DirtSpeciale.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 180/250: Grumobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Grumobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Grumobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Grumobile', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '180/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB39', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/98/HTB39.png/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 181/250: Shelby Cobra 427 S/C
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Shelby Cobra 427 S/C' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Shelby' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Rolling Metal' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Rolling Metal' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Shelby Cobra 427 S/C' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Shelby Cobra 427 S/C', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '181/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB53', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4f/ShelbyCobra.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 182/250: Chrysler Pacifica
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Chrysler Pacifica' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chrysler' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Vans' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Vans' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Chrysler Pacifica' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Chrysler Pacifica', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '182/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB93', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/99/HTB93.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 183/250: Bone Shaker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Bone Shaker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Bone Shaker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Bone Shaker', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '183/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF24', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/31/2024_Bone_Shaker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 184/250: 2020 Koenigsegg Jesko
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2020 Koenigsegg Jesko' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Koenigsegg' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '2020 Koenigsegg Jesko' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2020 Koenigsegg Jesko', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '184/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC21', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/26/2020KoenigseggJesko.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 185/250: Bugatti Bolide
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Bugatti Bolide' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Bugatti' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Bugatti Bolide' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Bugatti Bolide', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '185/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC22', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/97/2024BugattiBolide.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 186/250: Bumblebee
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Bumblebee' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Bumblebee' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Bumblebee', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '186/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB35', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ab/Bumblebee.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 187/250: Kowloon'd Hypervan
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Kowloon''d Hypervan' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Kowloon''d Hypervan' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Kowloon''d Hypervan', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '187/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY84', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a0/Kowloon%27dHypervan.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 188/250: '67 Lotus Type 49
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Lotus Type 49' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lotus' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''67 Lotus Type 49' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Lotus Type 49', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '188/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY76', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f8/Lotus49.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 189/250: Track Dwagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Track Dwagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Track Dwagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Track Dwagon', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '189/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY74', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a0/TrackDwagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 190/250: 1966 Triumph Tiger 100
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1966 Triumph Tiger 100' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '1966 Triumph Tiger 100' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1966 Triumph Tiger 100', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '190/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY62', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b8/TriumphT100.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 191/250: Nissan Skyline 2000GT-R LBWK
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline 2000GT-R LBWK' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Nissan Skyline 2000GT-R LBWK' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline 2000GT-R LBWK', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '191/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC65', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4c/2024_Nissan_Skyline_2000GT-R_LBWK.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 192/250: '84 Mustang SVO
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''84 Mustang SVO' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''84 Mustang SVO' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''84 Mustang SVO', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '192/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC66', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/dd/2024_%2784_Mustang_SVO.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 193/250: Formula E Gen3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Formula E Gen3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Formula E Gen3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Formula E Gen3', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '193/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY66', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/09/FormulaEGen3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 194/250: '92 Ford Mustang
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''92 Ford Mustang' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''92 Ford Mustang' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''92 Ford Mustang', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '194/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB05', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2b/HTB05loose.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 195/250: '92 BMW M3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''92 BMW M3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'BMW' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''92 BMW M3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''92 BMW M3', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '195/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB06', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/26/1992BMWM3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 196/250: '22 Ford Maverick Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''22 Ford Maverick Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''22 Ford Maverick Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''22 Ford Maverick Custom', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '196/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY78', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d7/FordMaverickPickup.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 197/250: Ducati DesertX
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ducati DesertX' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ducati DesertX' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ducati DesertX', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '197/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB26', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fa/2024DucatiDesertX.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 198/250: '20 Toyota Tacoma
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''20 Toyota Tacoma' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''20 Toyota Tacoma' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''20 Toyota Tacoma', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '198/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB27', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f3/2020ToyotaTacoma.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 199/250: Porsche 911 Turbo 3.6 (964)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Turbo 3.6 (964)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Porsche 911 Turbo 3.6 (964)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Turbo 3.6 (964)', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '199/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB41', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/79/1993PorscheTurbo.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 200/250: Car-de-Asada
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Car-de-Asada' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Car-de-Asada' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Car-de-Asada', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '200/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF25', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e0/CarDeAsada.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 201/250: '16 Bugatti Chiron
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''16 Bugatti Chiron' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Bugatti' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Quarter Mile Heroes' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Quarter Mile Heroes' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''16 Bugatti Chiron' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''16 Bugatti Chiron', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '201/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB88', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7b/2016BugattiChiron.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 202/250: Volkswagen ID. Buzz
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Volkswagen ID. Buzz' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volkswagen' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Vans' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Vans' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Volkswagen ID. Buzz' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Volkswagen ID. Buzz', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '202/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB94', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/00/VWIDBuzz.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 203/250: Toyota GR86 Cup
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Toyota GR86 Cup' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Toyota GR86 Cup' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Toyota GR86 Cup', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '203/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY77', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6e/ToyotaGR86Cup.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 204/250: Lamborghini Sesto Elemento
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lamborghini Sesto Elemento' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lamborghini' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Lamborghini Sesto Elemento' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lamborghini Sesto Elemento', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '204/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC23', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3f/LamborghiniSesto.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 205/250: Pagani Utopia
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pagani Utopia' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pagani' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Pagani Utopia' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pagani Utopia', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '205/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY83', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/77/PaganiUtopia.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 206/250: '77 Pontiac Firebird T/A
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''77 Pontiac Firebird T/A' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pontiac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''77 Pontiac Firebird T/A' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''77 Pontiac Firebird T/A', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '206/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC60', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/36/1977PontiacFirebird.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 207/250: Chevy Silverado
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Chevy Silverado' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Chevy Silverado' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Chevy Silverado', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '207/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC67', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e0/HTC67_-_Chevy_Silverado.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 208/250: Deora II
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Deora II' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Deora II' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Deora II', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '208/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC68', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/00/TekuDeoraII.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 209/250: Honda S800 Racing
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda S800 Racing' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Honda S800 Racing' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda S800 Racing', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '209/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY58', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9f/HondaS800Racing.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 210/250: '99 Ford F-150 SVT Lightning
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''99 Ford F-150 SVT Lightning' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''99 Ford F-150 SVT Lightning' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''99 Ford F-150 SVT Lightning', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '210/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB07', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/90/Ford_F-150_SVT_Light-99_hw.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 211/250: '96 Nissan 180SX Type X
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''96 Nissan 180SX Type X' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''96 Nissan 180SX Type X' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''96 Nissan 180SX Type X', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '211/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB08', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a8/HTB08-LOOSE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 212/250: Dune Daddy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Dune Daddy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Dune Daddy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Dune Daddy', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '212/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB28', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bd/DirtDaddy.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 213/250: Nissan Skyline 2000GT-R LBWK
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline 2000GT-R LBWK' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Nissan Skyline 2000GT-R LBWK' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline 2000GT-R LBWK', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '213/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY85', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/03/%27ToonedKenmeri.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 214/250: Quick Bite
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Quick Bite' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Quick Bite' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Quick Bite', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '214/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB48', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e2/MilkBite.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 215/250: '49 Drag Merc
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''49 Drag Merc' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Rolling Metal' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Rolling Metal' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''49 Drag Merc' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''49 Drag Merc', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '215/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB54', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/28/1949MercuryEight.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 216/250: Hot Wheels Ford Transit Connect
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hot Wheels Ford Transit Connect' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Vans' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Vans' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Hot Wheels Ford Transit Connect' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hot Wheels Ford Transit Connect', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '216/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF26', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f3/FordTransitFlowerVan.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 217/250: Ravenger S/T
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ravenger S/T' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ravenger S/T' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ravenger S/T', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '217/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY81', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c1/RavengerST.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 218/250: '92 Dodge Viper RT/10
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''92 Dodge Viper RT/10' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''92 Dodge Viper RT/10' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''92 Dodge Viper RT/10', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '218/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC24', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d1/1992DodgeViper.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 219/250: Aston Martin DB4GT High-Speed Edition
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Aston Martin DB4GT High-Speed Edition' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Aston Martin' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Aston Martin DB4GT High-Speed Edition' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Aston Martin DB4GT High-Speed Edition', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '219/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY86', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/eb/AstonMartinDB4Racer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 220/250: '67 Ford GT40 Mk.IV
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Ford GT40 Mk.IV' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''67 Ford GT40 Mk.IV' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Ford GT40 Mk.IV', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '220/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC69', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/45/FordMark4.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 221/250: Deora III
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Deora III' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Deora III' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Deora III', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '221/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC70', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9e/24DeoraIII.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 222/250: Lamborghini Huracán Sterrato
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lamborghini Huracán Sterrato' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lamborghini' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Lamborghini Huracán Sterrato' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lamborghini Huracán Sterrato', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '222/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY87', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1f/LamborghiniHurac%C3%A1nSterrato.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 223/250: Hover Storm
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hover Storm' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Hover Storm' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hover Storm', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '223/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB29', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/cd/2024_Hover_Storm.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 224/250: '94 Toyota Supra
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''94 Toyota Supra' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''94 Toyota Supra' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''94 Toyota Supra', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '224/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF27', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/10/%27ToonedSlapJackSupra.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 225/250: Sushi Tuner
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Sushi Tuner' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Sushi Tuner' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Sushi Tuner', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '225/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY88', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5c/SushiTuner.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 226/250: '91 GMC Syclone
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''91 GMC Syclone' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''91 GMC Syclone' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''91 GMC Syclone', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '226/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB10', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/69/Chevy_Syclone_%28HW_The_%2890s%29._White.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 227/250: VW T3 Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'VW T3 Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volkswagen' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Vans' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Vans' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'VW T3 Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'VW T3 Custom', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '227/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY57', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/37/VWT3Custom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 228/250: Small Bloc
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Small Bloc' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Small Bloc' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Small Bloc', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '228/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY92', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/90/SmallBloc.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 229/250: 2016 Ford GT Race
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2016 Ford GT Race' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '2016 Ford GT Race' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2016 Ford GT Race', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '229/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC71', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/32/HTC71.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 230/250: '59 Chevy Impala
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''59 Chevy Impala' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Day of the Dead/Halloween' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Day of the Dead/Halloween' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''59 Chevy Impala' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''59 Chevy Impala', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '230/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB02', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/89/CelebrationImpala.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 231/250: Celero GT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Celero GT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Quarter Mile Heroes' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Quarter Mile Heroes' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Celero GT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Celero GT', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '231/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB87', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/61/CeleroGTRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 232/250: Toyota Supra
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Toyota Supra' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Toyota Supra' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Toyota Supra', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '232/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB09', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/43/1994ToyotaSupraRZ.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 233/250: HW Roll Cage
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW Roll Cage' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'HW Roll Cage' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW Roll Cage', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '233/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB30', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3f/2024_Roll_Cage.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 234/250: Tred Shredder
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tred Shredder' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Tred Shredder' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tred Shredder', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '234/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB31', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/cf/2024_Tred_Shredder.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 235/250: Gordon Murray Automotive T.50s
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Gordon Murray Automotive T.50s' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Gordon Murray Automotive T.50s' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Gordon Murray Automotive T.50s', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '235/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY89', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ec/GMAT.50S.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 236/250: DMC DeLorean
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'DMC DeLorean' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Rolling Metal' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Rolling Metal' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'DMC DeLorean' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'DMC DeLorean', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '236/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF28', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/48/RollingDeLorean.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 237/250: Retro-Active
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Retro-Active' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Quarter Mile Heroes' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Quarter Mile Heroes' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Retro-Active' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Retro-Active', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '237/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB86', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/cc/2024_Retro-Active.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 238/250: Tesla Model S Plaid
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tesla Model S Plaid' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Tesla' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Quarter Mile Heroes' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Quarter Mile Heroes' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Tesla Model S Plaid' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tesla Model S Plaid', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '238/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY91', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/eb/TeslaModelSPlaid.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 239/250: Lamborghini Huracán LP 620-2 Super Trofeo
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lamborghini Huracán LP 620-2 Super Trofeo' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lamborghini' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Lamborghini Huracán LP 620-2 Super Trofeo' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lamborghini Huracán LP 620-2 Super Trofeo', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '239/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC25', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0d/LamborghiniHurac%C3%A1nST.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 240/250: '17 Ford GT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''17 Ford GT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''17 Ford GT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''17 Ford GT', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '240/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC26', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/10/2017FordGTCoupe.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 241/250: Dodge Viper SRT10 ACR
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Dodge Viper SRT10 ACR' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Dodge Viper SRT10 ACR' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Dodge Viper SRT10 ACR', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '241/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC27', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d4/DodgeACR.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 242/250: LB-Silhouette WORKS GT Nissan 35GT-RR VER.2
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'LB-Silhouette WORKS GT Nissan 35GT-RR VER.2' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'LB-Silhouette WORKS GT Nissan 35GT-RR VER.2' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'LB-Silhouette WORKS GT Nissan 35GT-RR VER.2', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '242/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC72', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d8/LBGT-R.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 243/250: McLaren F1
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'McLaren F1' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'McLaren' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'McLaren F1' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'McLaren F1', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '243/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB11', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a2/1996McLarenF1.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 244/250: '98 Subaru Impreza 22B STi-Version
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''98 Subaru Impreza 22B STi-Version' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Subaru' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: The ''90s' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: The ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''98 Subaru Impreza 22B STi-Version' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''98 Subaru Impreza 22B STi-Version', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '244/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB12', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/34/GravelCrew22B.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 245/250: Porsche 928S Safari
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 928S Safari' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Porsche 928S Safari' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 928S Safari', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '245/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTF29', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/24/1977Porsche928Safari.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 246/250: Tesla Cybertruck
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tesla Cybertruck' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Tesla' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Rolling Metal' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Rolling Metal' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Tesla Cybertruck' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tesla Cybertruck', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '246/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB55', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/95/HTB55.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 247/250: Hi-Roller II
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hi-Roller II' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Rolling Metal' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Rolling Metal' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Hi-Roller II' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hi-Roller II', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '247/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY94', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/42/Hi-RollerII.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 248/250: Dodge Van
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Dodge Van' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Vans' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Vans' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Dodge Van' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Dodge Van', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '248/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTB95', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7f/DodgeRamVanRacing.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 249/250: '83 Chevy Silverado
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''83 Chevy Silverado' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = '''83 Chevy Silverado' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''83 Chevy Silverado', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '249/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HTC73', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6e/1983ChevroletSilverado.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 250/250: Ford Mustang Dark Horse
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Mustang Dark Horse' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2024 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2024 AND name = 'Ford Mustang Dark Horse' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Mustang Dark Horse', 2024, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '250/250', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HRY93', 'Mattel Mainline 2024')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/57/FordMustangDarkHorse.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

END $$;