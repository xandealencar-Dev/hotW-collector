-- ============================================================
-- 012_hotwheels_2025_2026_mainline.sql
-- Hot Wheels Collector — Ingestão da Base Mainline 2025 e 2026
-- Totalmente idempotente com ON CONFLICT / CTEs.
-- ============================================================

-- 1. Fabricantes
INSERT INTO public.manufacturers (name)
VALUES
  ('Alfa Romeo'),
  ('Aston Martin'),
  ('Audi'),
  ('BMW'),
  ('Barbie'),
  ('Bentley'),
  ('Bugatti'),
  ('Cadillac'),
  ('Chevrolet'),
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
  ('Maserati'),
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

-- 2. Séries 2025 e 2026
INSERT INTO public.series (name, year, type)
VALUES
  ('Batman', 2025, 'Mainline'),
  ('Compact Kings', 2025, 'Mainline'),
  ('Experimotors', 2025, 'Mainline'),
  ('Factory Fresh', 2025, 'Mainline'),
  ('Fast Foodie', 2025, 'Mainline'),
  ('HW Art Cars', 2025, 'Mainline'),
  ('HW Celebration Racers  Happy Birthday!', 2025, 'Mainline'),
  ('HW Celebration Racers  Maneki-neko Day', 2025, 'Mainline'),
  ('HW Celebration Racers Chinese New Year', 2025, 'Mainline'),
  ('HW Celebration Racers Cinco de Mayo', 2025, 'Mainline'),
  ('HW Celebration Racers Day of the Dead/Halloween', 2025, 'Mainline'),
  ('HW Celebration Racers Earth Day', 2025, 'Mainline'),
  ('HW Celebration Racers International Women''s Day', 2025, 'Mainline'),
  ('HW Celebration Racers Mattel 80th Anniversary', 2025, 'Mainline'),
  ('HW Celebration Racers Movember', 2025, 'Mainline'),
  ('HW Celebration Racers Valentine''s Day', 2025, 'Mainline'),
  ('HW Designed By', 2025, 'Mainline'),
  ('HW Dirt', 2025, 'Mainline'),
  ('HW Dirt New in Mainline', 2025, 'Mainline'),
  ('HW Dream Garage', 2025, 'Mainline'),
  ('HW EV', 2025, 'Mainline'),
  ('HW Exotics', 2025, 'Mainline'),
  ('HW First Response', 2025, 'Mainline'),
  ('HW Hot Trucks', 2025, 'Mainline'),
  ('HW Hot Trucks New in Mainline', 2025, 'Mainline'),
  ('HW J-Imports', 2025, 'Mainline'),
  ('HW J-Imports New in Mainline', 2025, 'Mainline'),
  ('HW Metro', 2025, 'Mainline'),
  ('HW Modified', 2025, 'Mainline'),
  ('HW Moto', 2025, 'Mainline'),
  ('HW Race Day', 2025, 'Mainline'),
  ('HW Reverse Rake', 2025, 'Mainline'),
  ('HW Ride-Ons', 2025, 'Mainline'),
  ('HW Screen Time', 2025, 'Mainline'),
  ('HW Screen Time New in Mainline', 2025, 'Mainline'),
  ('HW Track Champs', 2025, 'Mainline'),
  ('HW Wagons', 2025, 'Mainline'),
  ('HW: ''70s vs. ''90s', 2025, 'Mainline'),
  ('HW: ''70s vs. ''90s New in Mainline', 2025, 'Mainline'),
  ('Hot Wheels Let''s Race', 2025, 'Mainline'),
  ('Muscle Mania', 2025, 'Mainline'),
  ('Mustang 60th', 2025, 'Mainline'),
  ('Peak Pursuit', 2025, 'Mainline'),
  ('Peak Pursuit New in Mainline', 2025, 'Mainline'),
  ('Rod Squad', 2025, 'Mainline'),
  ('Safari Mode', 2025, 'Mainline'),
  ('Then and Now', 2025, 'Mainline'),
  ('Track Aces', 2025, 'Mainline'),
  ('Wild Widebody', 2025, 'Mainline'),
  ('X-Raycers', 2025, 'Mainline'),
  ('Batman', 2026, 'Mainline'),
  ('Compact Kings', 2026, 'Mainline'),
  ('Cool Classics', 2026, 'Mainline'),
  ('Drag Racers', 2026, 'Mainline'),
  ('Drag Racers New in Mainline', 2026, 'Mainline'),
  ('Drop Tops', 2026, 'Mainline'),
  ('Exoticars', 2026, 'Mainline'),
  ('Experimotors', 2026, 'Mainline'),
  ('Factory Fresh', 2026, 'Mainline'),
  ('Ferrari', 2026, 'Mainline'),
  ('Formula 1', 2026, 'Mainline'),
  ('HW All Drivers Welcome  Easterseals', 2026, 'Mainline'),
  ('HW All Drivers Welcome International Day of Play', 2026, 'Mainline'),
  ('HW All Drivers Welcome World Autism Awareness Day', 2026, 'Mainline'),
  ('HW All Drivers Welcome World Braille Day', 2026, 'Mainline'),
  ('HW All Drivers Welcome World Mental Health Day', 2026, 'Mainline'),
  ('HW Dirt', 2026, 'Mainline'),
  ('HW Dream Garage', 2026, 'Mainline'),
  ('HW EV', 2026, 'Mainline'),
  ('HW Euro', 2026, 'Mainline'),
  ('HW Fan Driven', 2026, 'Mainline'),
  ('HW Heavyweights', 2026, 'Mainline'),
  ('HW J-Imports', 2026, 'Mainline'),
  ('HW Mods', 2026, 'Mainline'),
  ('HW Starting Grid', 2026, 'Mainline'),
  ('HW Torque', 2026, 'Mainline'),
  ('Hot Wheels Let''s Race', 2026, 'Mainline'),
  ('Layin'' Low', 2026, 'Mainline'),
  ('Mattel', 2026, 'Mainline'),
  ('Nightspeed', 2026, 'Mainline'),
  ('Rod Squad', 2026, 'Mainline'),
  ('Screen Time', 2026, 'Mainline'),
  ('Screen Time New in Mainline', 2026, 'Mainline'),
  ('Sweet Rides', 2026, 'Mainline'),
  ('Team Wheels', 2026, 'Mainline'),
  ('Then and Now', 2026, 'Mainline'),
  ('Tooned', 2026, 'Mainline'),
  ('Trophy Case', 2026, 'Mainline'),
  ('Truckin'' Along', 2026, 'Mainline'),
  ('Wagons', 2026, 'Mainline'),
  ('X-Raycers', 2026, 'Mainline')
ON CONFLICT DO NOTHING;

-- 3. Categorias
INSERT INTO public.categories (name)
VALUES
  ('Batman'),
  ('Compact Kings'),
  ('Cool Classics'),
  ('Drag Racers'),
  ('Drag Racers New in Mainline'),
  ('Drop Tops'),
  ('Exoticars'),
  ('Experimotors'),
  ('Factory Fresh'),
  ('Fast Foodie'),
  ('Ferrari'),
  ('Formula 1'),
  ('HW All Drivers Welcome  Easterseals'),
  ('HW All Drivers Welcome International Day of Play'),
  ('HW All Drivers Welcome World Autism Awareness Day'),
  ('HW All Drivers Welcome World Braille Day'),
  ('HW All Drivers Welcome World Mental Health Day'),
  ('HW Art Cars'),
  ('HW Celebration Racers  Happy Birthday!'),
  ('HW Celebration Racers  Maneki-neko Day'),
  ('HW Celebration Racers Chinese New Year'),
  ('HW Celebration Racers Cinco de Mayo'),
  ('HW Celebration Racers Day of the Dead/Halloween'),
  ('HW Celebration Racers Earth Day'),
  ('HW Celebration Racers International Women''s Day'),
  ('HW Celebration Racers Mattel 80th Anniversary'),
  ('HW Celebration Racers Movember'),
  ('HW Celebration Racers Valentine''s Day'),
  ('HW Designed By'),
  ('HW Dirt'),
  ('HW Dirt New in Mainline'),
  ('HW Dream Garage'),
  ('HW EV'),
  ('HW Euro'),
  ('HW Exotics'),
  ('HW Fan Driven'),
  ('HW First Response'),
  ('HW Heavyweights'),
  ('HW Hot Trucks'),
  ('HW Hot Trucks New in Mainline'),
  ('HW J-Imports'),
  ('HW J-Imports New in Mainline'),
  ('HW Metro'),
  ('HW Modified'),
  ('HW Mods'),
  ('HW Moto'),
  ('HW Race Day'),
  ('HW Reverse Rake'),
  ('HW Ride-Ons'),
  ('HW Screen Time'),
  ('HW Screen Time New in Mainline'),
  ('HW Starting Grid'),
  ('HW Torque'),
  ('HW Track Champs'),
  ('HW Wagons'),
  ('HW: ''70s vs. ''90s'),
  ('HW: ''70s vs. ''90s New in Mainline'),
  ('Hot Wheels Let''s Race'),
  ('Layin'' Low'),
  ('Mattel'),
  ('Muscle Mania'),
  ('Mustang 60th'),
  ('Nightspeed'),
  ('Peak Pursuit'),
  ('Peak Pursuit New in Mainline'),
  ('Rod Squad'),
  ('Safari Mode'),
  ('Screen Time'),
  ('Screen Time New in Mainline'),
  ('Sweet Rides'),
  ('Team Wheels'),
  ('Then and Now'),
  ('Tooned'),
  ('Track Aces'),
  ('Trophy Case'),
  ('Truckin'' Along'),
  ('Wagons'),
  ('Wild Widebody'),
  ('X-Raycers')
ON CONFLICT (name) DO NOTHING;

-- 4. Castings (Molduras)
INSERT INTO public.castings (name, debut_year)
VALUES
  ('''11 Corvette Grand Sport', 2025),
  ('''15 Land Rover Defender Double Cab', 2025),
  ('''15 Mazda MX-5 Miata', 2025),
  ('''16 Cadillac ATS-V R', 2025),
  ('''16 Lamborghini Centenario Roadster', 2025),
  ('''17 Audi RS 6 Avant', 2025),
  ('''17 Ford F-150 Raptor', 2025),
  ('''17 Pagani Huayra Roadster', 2025),
  ('''18 Camaro SS', 2025),
  ('''19 Chevy Silverado Trail Boss LT', 2025),
  ('''19 Mercedes-Benz A-Class', 2025),
  ('''20 Dodge Charger Hellcat', 2025),
  ('''20 Jeep Gladiator', 2025),
  ('''20 Toyota GR Supra', 2025),
  ('''21 Ford Bronco', 2025),
  ('''22 Ford Maverick Custom', 2025),
  ('''23 Ram 1500', 2025),
  ('''33 Ford Lo Boy', 2025),
  ('''41 Willys', 2025),
  ('''47 Chevy Fleetline', 2025),
  ('''55 Chevy', 2025),
  ('''58 Chevy Impala', 2025),
  ('''59 Chevy Impala', 2025),
  ('''62 Corvette Gasser', 2025),
  ('''63 Chevy II', 2025),
  ('''64 Dodge 330', 2025),
  ('''64 Impala', 2025),
  ('''64 Lincoln Continental', 2025),
  ('''65 Mercury Comet Cyclone', 2025),
  ('''66 Buick Riviera', 2025),
  ('''67 Austin Mini Van', 2025),
  ('''67 Camaro', 2025),
  ('''67 Chevy C10', 2025),
  ('''67 Ford Mustang Coupe', 2025),
  ('''67 Mustang', 2025),
  ('''67 Pontiac Firebird 400', 2025),
  ('''67 Shelby GT500', 2025),
  ('''68 Corvette - Gas Monkey Garage', 2025),
  ('''68 Dodge Dart', 2025),
  ('''68 Lotus Type 49', 2025),
  ('''68 Mercury Cougar', 2025),
  ('''68 Shelby GT500', 2025),
  ('''69 Chevelle', 2025),
  ('''69 Corvette Racer', 2025),
  ('''69 Dodge Charger Daytona', 2025),
  ('''69 Dodge Coronet Superbee', 2025),
  ('''69 Mercury Cyclone', 2025),
  ('''70 Buick GSX', 2025),
  ('''70 Chevelle SS Wagon', 2025),
  ('''70 Chevy Camaro RS', 2025),
  ('''70 Dodge Charger', 2025),
  ('''70 Dodge Hemi Challenger', 2025),
  ('''70 Dodge Power Wagon', 2025),
  ('''70 Ford Escort RS1600', 2025),
  ('''70 Plymouth AAR Cuda', 2025),
  ('''70 Plymouth Superbird', 2025),
  ('''71 Dodge Challenger', 2025),
  ('''71 Lamborghini Miura SV', 2025),
  ('''71 Mustang Funny Car', 2025),
  ('''73 Honda Civic Custom', 2025),
  ('''73 Pontiac Firebird', 2025),
  ('''74 Brazilian Dodge Charger', 2025),
  ('''75 Chevy Blazer Custom', 2025),
  ('''76 Chevy Chevette', 2025),
  ('''80 El Camino', 2025),
  ('''82 Toyota Supra', 2025),
  ('''83 Chevy Silverado', 2025),
  ('''84 Audi Sport quattro', 2025),
  ('''85 Honda City Turbo II', 2025),
  ('''87 Audi quattro', 2025),
  ('''87 Buick Regal GNX', 2025),
  ('''87 Ford Sierra Cosworth', 2025),
  ('''88 Mitsubishi Starion', 2025),
  ('''89 Mazda Savanna RX-7 FC3S', 2025),
  ('''89 Mercedes-Benz 560 SEC AMG', 2025),
  ('''90 Honda Civic EF', 2025),
  ('''91 GMC Syclone', 2025),
  ('''92 Dodge Viper RT/10', 2025),
  ('''92 Ford Mustang', 2025),
  ('''94 Audi Avant RS2', 2025),
  ('''94 Bugatti EB110 SS', 2025),
  ('''94 Toyota Supra', 2025),
  ('''95 Mazda RX-7 Drift', 2025),
  ('''96 Chevrolet Impala SS', 2025),
  ('''96 Dodge Viper GTS', 2025),
  ('''96 Porsche Carrera', 2025),
  ('''98 Honda Prelude', 2025),
  ('''99 Ford F-150 SVT Lightning', 2025),
  ('1963 Ford Galaxie', 2025),
  ('1966 Bat Boat', 2025),
  ('1966 Triumph Tiger 100', 2025),
  ('1970 Custom Plymouth Roadrunner', 2025),
  ('1970 Pontiac Firebird', 2025),
  ('1972 Datsun Sunny Coupe', 2025),
  ('1975 Datsun Sunny Truck (B120)', 2025),
  ('1978 Dodge Li''l Red Express Truck', 2025),
  ('1983 Porsche 928S', 2025),
  ('1985 Honda CR-X', 2025),
  ('1988 Jeep Wagoneer', 2025),
  ('2 Jet Z', 2025),
  ('2013 SRT Viper', 2025),
  ('2016 Ford GT Race', 2025),
  ('2018 Bentley Continental GT3', 2025),
  ('2018 Honda Civic Type R', 2025),
  ('2019 Audi R8 Spyder', 2025),
  ('2019 Audi TT Safari', 2025),
  ('2020 Ford Mustang Shelby GT500', 2025),
  ('2020 Koenigsegg Jesko', 2025),
  ('2020 Ram 1500 Rebel', 2025),
  ('2023 Nissan Z', 2025),
  ('2024 Aston Martin Vantage GT3', 2025),
  ('24/Seven', 2025),
  ('5 Alarm', 2025),
  ('8 Crate', 2025),
  ('Ain''t Fare', 2025),
  ('Alfa Romeo Giulia TI Super', 2025),
  ('Alpha Pursuit', 2025),
  ('Amaru GTC', 2025),
  ('Armored Batmobile', 2025),
  ('Arrow Dynamic', 2025),
  ('Aston Martin Aramco Formula One Team', 2025),
  ('Aston Martin DB4GT High-Speed Edition', 2025),
  ('Aston Martin DB5 Safari Edition', 2025),
  ('Audi 90 quattro', 2025),
  ('Austin Mini Cooper S', 2025),
  ('BMW 2002', 2025),
  ('BMW 635 CSi', 2025),
  ('BMW M3 Wagon', 2025),
  ('BMW M4 GT3', 2025),
  ('Barbie Dream Camper', 2025),
  ('Batman and Robin Batmobile', 2025),
  ('Batman: Arkham Asylum Batmobile', 2025),
  ('Batmobile', 2025),
  ('Big-Air Bel-Air', 2025),
  ('Birthday Burner', 2025),
  ('Blitzspeeder', 2025),
  ('Bogzilla', 2025),
  ('Bone Shaker', 2025),
  ('Bounce''n Bass', 2025),
  ('Braille Racer - Twin Mill', 2025),
  ('Bugatti Bolide', 2025),
  ('Bullet Proof', 2025),
  ('Bully Goat', 2025),
  ('Buns of Steel', 2025),
  ('Cadillac Celestiq', 2025),
  ('Cadillac Project GTP Hypercar', 2025),
  ('Carbonator', 2025),
  ('Chevroletor', 2025),
  ('Chevy Blazer 4×4', 2025),
  ('Chevy El Camino', 2025),
  ('Chevy Super Volt', 2025),
  ('Chill Mill', 2025),
  ('Chop ''n Bloc', 2025),
  ('Circle Tracker', 2025),
  ('Classic ''55 Nomad', 2025),
  ('Classic TV Series Batmobile', 2025),
  ('Click Shift', 2025),
  ('Cone Shaker', 2025),
  ('Corvette C7 Z06', 2025),
  ('Corvette Grand Sport', 2025),
  ('Coupé Clip', 2025),
  ('Crate Racer', 2025),
  ('Crescendo', 2025),
  ('Cruise Bruiser', 2025),
  ('Cupra e-Racer', 2025),
  ('Custom ''18 Ford Mustang GT', 2025),
  ('Custom ''53 Cadillac', 2025),
  ('Custom ''53 Chevy', 2025),
  ('Custom ''56 Ford Truck', 2025),
  ('Custom ''62 Chevy Pickup', 2025),
  ('Custom ''66 Toronado', 2025),
  ('Custom ''72 Chevy LUV', 2025),
  ('Custom 2020 Honda e', 2025),
  ('Custom Cadillac Fleetwood', 2025),
  ('Custom Kia EV6', 2025),
  ('Custom Otto', 2025),
  ('Custom Vanster', 2025),
  ('Czinger 21C', 2025),
  ('DMC DeLorean', 2025),
  ('Datsun 240Z', 2025),
  ('Datsun 620', 2025),
  ('Decidedly Go', 2025),
  ('Deora II', 2025),
  ('Deora III', 2025),
  ('Deora Too''nd', 2025),
  ('Dessert Drifter', 2025),
  ('Dino 206 GT', 2025),
  ('Disney Steamboat', 2025),
  ('Donut Drifter', 2025),
  ('Draftnator', 2025),
  ('Draggin'' Wagon', 2025),
  ('Drift Box', 2025),
  ('Drift''n Break', 2025),
  ('Drift-Ender', 2025),
  ('Duck N'' Roll', 2025),
  ('Dune It Up', 2025),
  ('Eggshelleracer', 2025),
  ('El Segundo Coupe', 2025),
  ('El Segundo Rallye', 2025),
  ('El Viento', 2025),
  ('Electro Silhouette', 2025),
  ('Erikenstein Rod', 2025),
  ('Fast Fish', 2025),
  ('Feline Lucky', 2025),
  ('Ferrari 12Cilindri', 2025),
  ('Ferrari 365 GTB4 Competizione', 2025),
  ('Ferrari F2004', 2025),
  ('Ferrari F40 Competizione', 2025),
  ('Ferrari SF90 Stradale', 2025),
  ('Fiat 500C', 2025),
  ('Fiat 500e', 2025),
  ('Fiat Beast of Turin', 2025),
  ('Fish''d &amp; Chip''d', 2025),
  ('Flippin Fast', 2025),
  ('Ford Escort', 2025),
  ('Ford F-150 Lightning SuperTruck', 2025),
  ('Ford GT', 2025),
  ('Ford Model A Custom ''31', 2025),
  ('Ford Mustang Dark Horse', 2025),
  ('Ford Mustang GTD', 2025),
  ('Ford Mustang Mach-E 1400', 2025),
  ('Ford Performance SuperVan 4', 2025),
  ('Ford RS200', 2025),
  ('Formula E Gen3', 2025),
  ('Futurismo', 2025),
  ('Gazella GT', 2025),
  ('Go-Realla-Fast', 2025),
  ('Gone Mad', 2025),
  ('Gordon Murray Automotive T.33', 2025),
  ('Gordon Murray Automotive T.50s', 2025),
  ('Gotta Go', 2025),
  ('HW Formula Solar', 2025),
  ('HW K.I.T.T. Concept', 2025),
  ('HW Test Ride', 2025),
  ('HW Ultimate T-Rex Transporter', 2025),
  ('HW50 Concept', 2025),
  ('Hako Type D', 2025),
  ('Haulerback', 2025),
  ('Head Gasket', 2025),
  ('Hi-Roller', 2025),
  ('Hi-Roller II', 2025),
  ('High-Tail Chaser', 2025),
  ('Hirohata Merc', 2025),
  ('Honda CB750 Café', 2025),
  ('Honda Civic Custom', 2025),
  ('Honda Motocompo', 2025),
  ('Honda Odyssey', 2025),
  ('Honda S800 Racing', 2025),
  ('Honda VFR750R (RC30)', 2025),
  ('Hot Wheengs', 2025),
  ('Hoto Roto', 2025),
  ('Humvee', 2025),
  ('Hyper Rocker', 2025),
  ('Instant Boost', 2025),
  ('Jaguar Mk1', 2025),
  ('Jaguar XJC V12 Coupe', 2025),
  ('K.I.T.T.', 2025),
  ('Kei Swap', 2025),
  ('Kick Kart', 2025),
  ('Kick Sauber F1 Team', 2025),
  ('King Kuda', 2025),
  ('Kowloon''d Hypervan', 2025),
  ('LB-WORKS Lamborghini Huracán Coupé', 2025),
  ('La Liebre', 2025),
  ('La Troca', 2025),
  ('Lamborghini Huracán Sterrato', 2025),
  ('Land Rover Defender 90', 2025),
  ('Later Crater', 2025),
  ('Layin'' Lowrider', 2025),
  ('Lil'' Mad', 2025),
  ('Lil'' Roar', 2025),
  ('Limited Grip', 2025),
  ('Long Bloc', 2025),
  ('Lotus Cortina', 2025),
  ('Lotus Sport Elise', 2025),
  ('Lucid Air', 2025),
  ('Mach Speeder', 2025),
  ('Mad Drip', 2025),
  ('Mad Manga', 2025),
  ('Madfast', 2025),
  ('Mailed It!', 2025),
  ('Maserati Shamal', 2025),
  ('Maserati Tipo 61', 2025),
  ('Mattel Dream Mobile', 2025),
  ('Max Steel', 2025),
  ('Mazda 787B', 2025),
  ('Mazda Autozam', 2025),
  ('Mazda MX-5 Miata', 2025),
  ('Mazda REPU', 2025),
  ('Mazda RX-3', 2025),
  ('Mazda RX-7', 2025),
  ('McLaren Formula 1 Team', 2025),
  ('McLaren Speedtail', 2025),
  ('McLaren W1', 2025),
  ('McMurtry Spéirling', 2025),
  ('Mercedes-Benz 500 E', 2025),
  ('Mercedes-Benz CLA HW', 2025),
  ('Mercedes-Benz Unimog 1300L', 2025),
  ('Mickey Mouse Car', 2025),
  ('Mid Mill', 2025),
  ('Minecart', 2025),
  ('Mini JCW Electric', 2025),
  ('Mo-Stash', 2025),
  ('Mod Mill', 2025),
  ('Monster Dairy Delivery', 2025),
  ('Monster High Ghoul Mobile', 2025),
  ('Monteracer', 2025),
  ('Morgan Super 3', 2025),
  ('Mountain Mauler', 2025),
  ('Nerve Hammer', 2025),
  ('Nissan Leaf NISMO RC_02', 2025),
  ('Nissan Maxima Drift Car', 2025),
  ('Nissan Skyline 2000 GT-R', 2025),
  ('Nissan Skyline 2000GT-R LBWK', 2025),
  ('Nissan Skyline GT-R (BCNR33)', 2025),
  ('Nissan Skyline GT-R (BNR32)', 2025),
  ('Nissan Skyline GT-R (BNR34)', 2025),
  ('Nissan Skyline HT 2000GT-X', 2025),
  ('Optimus Prime', 2025),
  ('Oracle Red Bull Racing', 2025),
  ('PT Fast', 2025),
  ('Pagani Utopia', 2025),
  ('Pagani Zonda Cinque', 2025),
  ('Party Wagon', 2025),
  ('Pass ''n Go', 2025),
  ('Pass''n Gasser', 2025),
  ('Pedal Driver', 2025),
  ('Peugeot 9X8 Hypercar', 2025),
  ('Pixel Shaker', 2025),
  ('Polestar TRX', 2025),
  ('Pontiac Aztek Custom', 2025),
  ('Porsche 904 Carrera GTS', 2025),
  ('Porsche 908-3', 2025),
  ('Porsche 911 Carrera Clip', 2025),
  ('Porsche 911 Carrera RS 2.7', 2025),
  ('Porsche 911 Carrera T', 2025),
  ('Porsche 911 GT3', 2025),
  ('Porsche 911 GT3 RS', 2025),
  ('Porsche 911 Rallye', 2025),
  ('Porsche 911 Turbo Cabriolet', 2025),
  ('Porsche Taycan Turbo S', 2025),
  ('Power Rocket', 2025),
  ('Project Twin Mill', 2025),
  ('Proton Saga', 2025),
  ('Punk Rod', 2025),
  ('Purple Passion', 2025),
  ('Quick Bite', 2025),
  ('Quick Chat', 2025),
  ('RD-06', 2025),
  ('RRRoadster', 2025),
  ('Raijin Express', 2025),
  ('Range Rover Velar', 2025),
  ('Rapid Pulse', 2025),
  ('Ravenger S/T', 2025),
  ('Renault Espace F1', 2025),
  ('Ridge Crest GT', 2025),
  ('Rig Storm', 2025),
  ('Rodger Dodger', 2025),
  ('Rodger Dodger 2.0', 2025),
  ('Roller Toaster', 2025),
  ('Salt Shaker', 2025),
  ('Salt Streaker', 2025),
  ('Screamliner', 2025),
  ('Scuderia Ferrari HP', 2025),
  ('Shark Bite', 2025),
  ('Silverado EV RST', 2025),
  ('Skull Shaker', 2025),
  ('Slide Kick', 2025),
  ('Slide-Burn', 2025),
  ('Small Bloc', 2025),
  ('Snoopy', 2025),
  ('Solar Reflex', 2025),
  ('Speed Driver', 2025),
  ('Spider-Mobile', 2025),
  ('Standard Kart', 2025),
  ('Stockar', 2025),
  ('Street Shaker', 2025),
  ('Street Shrieker', 2025),
  ('Street Wiener', 2025),
  ('Subaru BRZ', 2025),
  ('Subaru Impreza WRX', 2025),
  ('Super Twin Mill', 2025),
  ('Supercharged', 2025),
  ('Surf ''N Turf', 2025),
  ('Sushi Tuner', 2025),
  ('Sweet Driver', 2025),
  ('TV Series Batmobile', 2025),
  ('Terra-Tracktyl', 2025),
  ('Tesla Cyberquad', 2025),
  ('Tesla Model S Plaid', 2025),
  ('The Dark Knight Batmobile', 2025),
  ('The Simpsons Family Car', 2025),
  ('The Vanster', 2025),
  ('Time Shifter', 2025),
  ('Tooned Purple Passion', 2025),
  ('Tooned Volkswagen Golf Mk1', 2025),
  ('Total Disposal', 2025),
  ('Toyota AE86 Sprinter Trueno', 2025),
  ('Toyota GR86 Cup', 2025),
  ('Toyota Prius Custom', 2025),
  ('Track Dwagon', 2025),
  ('Track Ripper', 2025),
  ('Triumph TR6', 2025),
  ('Twin Dorado', 2025),
  ('Twin Mill Gen-E', 2025),
  ('Twin Tags', 2025),
  ('Uncertain-T', 2025),
  ('VW ID. Buzz Bomb', 2025),
  ('VW T3 Custom', 2025),
  ('Vairstrike', 2025),
  ('Vespa 90 SS Super Sprint (1966)', 2025),
  ('Visa Cash App Racing Bulls Formula One Team', 2025),
  ('Voltage Spike', 2025),
  ('Volvo 240 Drift Wagon', 2025),
  ('Wattzup', 2025),
  ('X-34 Landspeeder', 2025),
  ('X-Steam', 2025),
  ('X-cceleron', 2025)
ON CONFLICT (name) DO NOTHING;

-- 5. Modelos Cars e Identificadores 2025/2026
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

    -- Modelo 2025 001/250: Mazda MX-5 Miata
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda MX-5 Miata' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mazda MX-5 Miata' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda MX-5 Miata', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '001/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW18', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b9/MazdaChimera.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 002/250: Batman and Robin Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Batman and Robin Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Batman and Robin Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Batman and Robin Batmobile', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '002/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW60', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4f/20241205_175912.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 003/250: Monster High Ghoul Mobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Monster High Ghoul Mobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Monster High Ghoul Mobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Monster High Ghoul Mobile', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '003/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW61', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b4/2025_Monster_High_Ghoul_Mobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 004/250: Nissan Skyline GT-R (BNR32)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline GT-R (BNR32)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Nissan Skyline GT-R (BNR32)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline GT-R (BNR32)', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '004/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY72', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e3/%2789NissanR32.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 005/250: Purple Passion
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Purple Passion' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Designed By' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Designed By' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Purple Passion' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Purple Passion', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '005/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW63', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9f/LWPassion.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 006/250: Kowloon'd Hypervan
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Kowloon''d Hypervan' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Kowloon''d Hypervan' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Kowloon''d Hypervan', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '006/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW64', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4e/2025_Kowloon%27d_Hypervan.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 007/250: Small Bloc
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Small Bloc' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Small Bloc' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Small Bloc', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '007/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW65', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/37/1st_2025_Small_Bloc.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 008/250: Mazda Autozam
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda Autozam' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mazda Autozam' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda Autozam', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '008/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW66', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5b/2025_Mazda_Autozam_Red.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 009/250: Tesla Model S Plaid
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tesla Model S Plaid' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Tesla' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Tesla Model S Plaid' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tesla Model S Plaid', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '009/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW86', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a3/HWPlaid.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 010/250: Deora III
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Deora III' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Deora III' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Deora III', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '010/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW67', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a8/25DeoraIII.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 011/250: Kei Swap
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Kei Swap' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Kei Swap' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Kei Swap', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '011/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW14', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f7/KeiSwap.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 012/250: Custom '53 Chevy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''53 Chevy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Custom ''53 Chevy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''53 Chevy', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '012/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW68', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6d/C53C_HWTIKITIME_2025_cropped.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 013/250: Nerve Hammer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nerve Hammer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Nerve Hammer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nerve Hammer', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '013/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW69', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/08/1st_2025_Nerve_Hammer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 014/250: Draftnator
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Draftnator' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Draftnator' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Draftnator', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '014/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW70', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/68/1st_2025_Draftnator.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 015/250: Morgan Super 3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Morgan Super 3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Morgan Super 3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Morgan Super 3', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '015/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW13', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/69/MorganSuper3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 016/250: '87 Audi quattro
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''87 Audi quattro' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''87 Audi quattro' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''87 Audi quattro', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '016/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW72', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fd/87_Audi_quattro_Teal.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 017/250: Ford Performance SuperVan 4
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Performance SuperVan 4' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ford Performance SuperVan 4' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Performance SuperVan 4', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '017/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC20', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/83/FirstResponseSupervan.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 018/250: Alpha Pursuit
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Alpha Pursuit' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Alpha Pursuit' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Alpha Pursuit', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '018/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW71', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/18/2025_Alpha_Pursuit.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 019/250: Super Twin Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Super Twin Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Super Twin Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Super Twin Mill', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '019/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW12', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/95/SuperTwinMill.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 020/250: '21 Ford Bronco
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''21 Ford Bronco' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''21 Ford Bronco' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''21 Ford Bronco', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '020/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW73', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/56/1_st_2025_%2721_Ford_Bronco_%28Loose%29.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 021/250: '67 Chevy C10
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Chevy C10' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''67 Chevy C10' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Chevy C10', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '021/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW74', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/85/1967ChevyPickup.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 022/250: Bogzilla
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Bogzilla' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Bogzilla' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Bogzilla', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '022/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW75', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ec/1st_2025_Bogzilla.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 023/250: Kick Kart
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Kick Kart' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Kick Kart' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Kick Kart', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '023/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW76', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/00/20241128_133007.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 024/250: Custom Cadillac Fleetwood
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom Cadillac Fleetwood' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Cadillac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Custom Cadillac Fleetwood' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom Cadillac Fleetwood', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '024/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW77', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d3/1st_2025_Custom_Cadillac_Fleetwood.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 025/250: Max Steel
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Max Steel' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Max Steel' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Max Steel', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '025/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW78', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/89/MaxSteelBlue2025.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 026/250: Nissan Skyline 2000GT-R LBWK
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline 2000GT-R LBWK' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Nissan Skyline 2000GT-R LBWK' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline 2000GT-R LBWK', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '026/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW79', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/76/%27ToonedKatoSkyline.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 027/250: Twin Mill Gen-E
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Twin Mill Gen-E' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Chinese New Year' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Chinese New Year' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Twin Mill Gen-E' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Twin Mill Gen-E', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '027/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW80', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0a/GenE2025.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 028/250: '90 Honda Civic EF
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''90 Honda Civic EF' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''90 Honda Civic EF' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''90 Honda Civic EF', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '028/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW81', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/db/1990HondaEF.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 029/250: '94 Audi Avant RS2
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''94 Audi Avant RS2' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''94 Audi Avant RS2' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''94 Audi Avant RS2', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '029/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW82', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a5/2025_94_Audi_Avant_RS2.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 030/250: Standard Kart
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Standard Kart' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Standard Kart' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Standard Kart', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '030/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW83', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d4/StandardKart2022.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 031/250: X-34 Landspeeder
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'X-34 Landspeeder' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'X-34 Landspeeder' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'X-34 Landspeeder', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '031/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW84', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fa/Landspeeder.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 032/250: Fish'd &amp; Chip'd
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Fish''d &amp; Chip''d' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Designed By' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Designed By' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Fish''d &amp; Chip''d' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Fish''d &amp; Chip''d', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '032/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC21', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/98/Fish%27dandChip%27d.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 033/250: Fiat 500e
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Fiat 500e' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Fiat' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Fiat 500e' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Fiat 500e', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '033/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW85', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d6/2019Fiat500e.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 034/250: Ford Mustang GTD
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Mustang GTD' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mustang 60th' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mustang 60th' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ford Mustang GTD' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Mustang GTD', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '034/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW19', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/14/FordMustangGTD.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 035/250: The Vanster
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'The Vanster' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'The Vanster' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'The Vanster', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '035/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY87', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/66/1st_2025_The_Vanster.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 036/250: DMC DeLorean
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'DMC DeLorean' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'DMC DeLorean' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'DMC DeLorean', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '036/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW88', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bf/%2780sDeLorean.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 037/250: Crescendo
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Crescendo' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Crescendo' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Crescendo', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '037/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW89', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3a/1st_2025_Crescendo.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 038/250: Proton Saga
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Proton Saga' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Proton Saga' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Proton Saga', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '038/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW90', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a3/%2785ProtonSaga.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 039/250: 2020 Ram 1500 Rebel
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2020 Ram 1500 Rebel' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '2020 Ram 1500 Rebel' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2020 Ram 1500 Rebel', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '039/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW91', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/88/HYW91.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 040/250: Donut Drifter
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Donut Drifter' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Donut Drifter' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Donut Drifter', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '040/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW92', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4c/2025_Donut_Drifter.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 041/250: Lamborghini Huracán Sterrato
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lamborghini Huracán Sterrato' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lamborghini' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Safari Mode' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Safari Mode' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Lamborghini Huracán Sterrato' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lamborghini Huracán Sterrato', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '041/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW93', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d8/SafariSterrato.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 042/250: Haulerback
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Haulerback' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Haulerback' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Haulerback', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '042/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW17', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0a/Haulerback.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 043/250: '80 El Camino
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''80 El Camino' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''80 El Camino' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''80 El Camino', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '043/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW94', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a9/1st_2025_%2780_El_Camino.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 044/250: 1988 Jeep Wagoneer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1988 Jeep Wagoneer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jeep' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '1988 Jeep Wagoneer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1988 Jeep Wagoneer', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '044/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW95', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8d/1988Wagoneer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 045/250: '55 Chevy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''55 Chevy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''55 Chevy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''55 Chevy', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '045/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW96', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bb/HYW96.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 046/250: Hirohata Merc
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hirohata Merc' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Hirohata Merc' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hirohata Merc', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '046/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW97', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/be/1951Hirohata.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 047/250: Mazda REPU
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda REPU' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mazda REPU' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda REPU', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '047/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW98', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/ce/REPUnami.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 048/250: Subaru BRZ
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Subaru BRZ' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Subaru' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports New in Mainline' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Subaru BRZ' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Subaru BRZ', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '048/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW99', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6a/SubaruBRZDrift.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 049/250: '22 Ford Maverick Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''22 Ford Maverick Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''22 Ford Maverick Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''22 Ford Maverick Custom', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '049/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX00', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/52/FordMaverickCustom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 050/250: '66 Buick Riviera
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''66 Buick Riviera' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''66 Buick Riviera' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''66 Buick Riviera', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '050/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW16', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ea/%2766BuickRiviera.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 051/250: '69 Corvette Racer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''69 Corvette Racer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Valentine''s Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Valentine''s Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''69 Corvette Racer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''69 Corvette Racer', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '051/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX01', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/97/2025_%2769_Corvette_Racer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 052/250: Mercedes-Benz 500 E
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mercedes-Benz 500 E' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mercedes-Benz' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mercedes-Benz 500 E' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mercedes-Benz 500 E', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '052/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX02', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4d/Merc500EGreen2025.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 053/250: '70 Chevy Camaro RS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Chevy Camaro RS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''70 Chevy Camaro RS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Chevy Camaro RS', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '053/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX03', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/01/1st_%2770_Camaro_RS.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 054/250: Batman: Arkham Asylum Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Batman: Arkham Asylum Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Batman: Arkham Asylum Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Batman: Arkham Asylum Batmobile', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '054/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX04', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f8/2025_Arkham_Asylum_Batmobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 055/250: Humvee
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Humvee' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Humvee' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Humvee', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '055/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX05', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8d/1st_2025_Humvee.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 056/250: '70 Dodge Power Wagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Dodge Power Wagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''70 Dodge Power Wagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Dodge Power Wagon', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '056/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX26', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/46/1st_2025_%2770_Dodge_Power_Wagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 057/250: Mailed It!
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mailed It!' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mailed It!' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mailed It!', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '057/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC22', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8f/LubetskyMailedIt.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 058/250: Maserati Shamal
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Maserati Shamal' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Maserati' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Maserati Shamal' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Maserati Shamal', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '058/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW21', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5d/MaseratiShamal.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 059/250: Oracle Red Bull Racing
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Oracle Red Bull Racing' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Track Aces' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Track Aces' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Oracle Red Bull Racing' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Oracle Red Bull Racing', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '059/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW10', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b2/RedBullRacingRB20.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 060/250: Supercharged
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Supercharged' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Supercharged' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Supercharged', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '060/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX06', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/25/HWRTSupercharged.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 061/250: Hi-Roller II
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hi-Roller II' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Hi-Roller II' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hi-Roller II', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '061/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX07', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c0/HYX07.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 062/250: Datsun 240Z
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Datsun 240Z' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Datsun 240Z' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Datsun 240Z', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '062/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJB80', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/89/SakuraDatsun.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 063/250: Monteracer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Monteracer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Monteracer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Monteracer', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '063/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX09', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0c/1st_2025_Monteracer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 064/250: Arrow Dynamic
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Arrow Dynamic' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Arrow Dynamic' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Arrow Dynamic', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '064/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX10', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b7/1st_2025_Arrow_Dynamic.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 065/250: El Viento
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'El Viento' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'El Viento' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'El Viento', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '065/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX11', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9d/ElViento2025.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 066/250: Street Shrieker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Street Shrieker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Street Shrieker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Street Shrieker', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '066/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW20', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2f/StreetShrieker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 067/250: Rodger Dodger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rodger Dodger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Rodger Dodger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rodger Dodger', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '067/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX12', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/27/2025_Rodger_Dodger.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 068/250: Draggin' Wagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Draggin'' Wagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Draggin'' Wagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Draggin'' Wagon', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '068/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JHV10', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4a/PurpleWagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 069/250: Hi-Roller
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hi-Roller' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Hi-Roller' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hi-Roller', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '069/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX14', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0b/1st_2025_Hi-Roller.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 070/250: HW50 Concept
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW50 Concept' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'HW50 Concept' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW50 Concept', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '070/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX15', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3b/1st_2025_HW50_Concept.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 071/250: Punk Rod
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Punk Rod' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Punk Rod' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Punk Rod', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '071/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX16', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/16/Punk_Rod_%28HW_Modified%29.png/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 072/250: Cupra e-Racer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Cupra e-Racer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Cupra e-Racer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Cupra e-Racer', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '072/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW15', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2d/Cuprae-Racer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 073/250: 2020 Ford Mustang Shelby GT500
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2020 Ford Mustang Shelby GT500' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mustang 60th' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mustang 60th' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '2020 Ford Mustang Shelby GT500' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2020 Ford Mustang Shelby GT500', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '073/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB16', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d8/1st_2025_2020_Ford_Mustang_Shelby_GT500.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 074/250: Porsche 911 GT3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 GT3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Porsche 911 GT3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 GT3', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '074/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX17', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/ff/IsaiasPorsche.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 075/250: Jaguar Mk1
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Jaguar Mk1' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jaguar' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Jaguar Mk1' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Jaguar Mk1', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '075/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX19', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/64/RacingJaguar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 076/250: '74 Brazilian Dodge Charger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''74 Brazilian Dodge Charger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers International Women''s Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers International Women''s Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''74 Brazilian Dodge Charger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''74 Brazilian Dodge Charger', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '076/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX20', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9d/IWDCharger.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 077/250: BMW 2002
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'BMW 2002' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'BMW' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'BMW 2002' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'BMW 2002', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '077/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX21', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3f/1969BMW2002.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 078/250: '71 Lamborghini Miura SV
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''71 Lamborghini Miura SV' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lamborghini' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''71 Lamborghini Miura SV' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''71 Lamborghini Miura SV', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '078/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX22', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/54/1971Miura.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 079/250: Toyota GR86 Cup
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Toyota GR86 Cup' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Toyota GR86 Cup' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Toyota GR86 Cup', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '079/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX23', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9f/2023ToyotaGR86Cup.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 080/250: '15 Mazda MX-5 Miata
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''15 Mazda MX-5 Miata' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''15 Mazda MX-5 Miata' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''15 Mazda MX-5 Miata', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '080/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB18', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/58/MazdaMX-5Custom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 081/250: Chevy Blazer 4×4
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Chevy Blazer 4×4' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Chevy Blazer 4×4' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Chevy Blazer 4×4', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '081/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX25', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/40/ChevyBlazer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 082/250: Tesla Cyberquad
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tesla Cyberquad' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Tesla' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Tesla Cyberquad' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tesla Cyberquad', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '082/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW31', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/68/TeslaCyberquad.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 083/250: K.I.T.T.
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'K.I.T.T.' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'K.I.T.T.' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'K.I.T.T.', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '083/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX27', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1e/CustomKITT.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 084/250: Gotta Go
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Gotta Go' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Designed By' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Designed By' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Gotta Go' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Gotta Go', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '084/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY73', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2f/1st_2025_Gotta_Go.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 085/250: Street Wiener
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Street Wiener' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Street Wiener' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Street Wiener', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '085/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX29', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6b/1st_2025_Street_Wiener_%28HWLR%29.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 086/250: Silverado EV RST
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Silverado EV RST' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Silverado EV RST' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Silverado EV RST', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '086/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX30', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c3/ChevySilveradoEVRST.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 087/250: '70 Plymouth Superbird
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Plymouth Superbird' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Plymouth' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''70 Plymouth Superbird' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Plymouth Superbird', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '087/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX31', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/80/ArtSuperbird.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 088/250: Ain't Fare
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ain''t Fare' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ain''t Fare' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ain''t Fare', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '088/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX32', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a9/GrafittiFare.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 089/250: Stockar
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Stockar' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Stockar' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Stockar', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '089/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX33', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9c/RacingStockar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 090/250: Gordon Murray Automotive T.33
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Gordon Murray Automotive T.33' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Gordon Murray Automotive T.33' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Gordon Murray Automotive T.33', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '090/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW23', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1a/GMAT.33.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 091/250: Cruise Bruiser
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Cruise Bruiser' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Cruise Bruiser' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Cruise Bruiser', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '091/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX34', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/39/CruiseBruiser.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 092/250: Dune It Up
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Dune It Up' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Track Aces' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Track Aces' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Dune It Up' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Dune It Up', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '092/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX35', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/62/DuneItUp.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 093/250: 1975 Datsun Sunny Truck (B120)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1975 Datsun Sunny Truck (B120)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks New in Mainline' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '1975 Datsun Sunny Truck (B120)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1975 Datsun Sunny Truck (B120)', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '093/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX36', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/19/1975NissanSunny.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 094/250: '99 Ford F-150 SVT Lightning
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''99 Ford F-150 SVT Lightning' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''99 Ford F-150 SVT Lightning' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''99 Ford F-150 SVT Lightning', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '094/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX37', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b7/FishingLightning.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 095/250: Pedal Driver
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pedal Driver' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Pedal Driver' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pedal Driver', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '095/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC23', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/86/TreasurePedal.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 096/250: '23 Ram 1500
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''23 Ram 1500' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''23 Ram 1500' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''23 Ram 1500', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '096/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY54', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/38/2023RamTRX.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 097/250: Mid Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mid Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mid Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mid Mill', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '097/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX39', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6f/MidMill.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 098/250: Hako Type D
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hako Type D' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Hako Type D' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hako Type D', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '098/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW25', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/34/SupotsukaFR.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 099/250: Cadillac Project GTP Hypercar
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Cadillac Project GTP Hypercar' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Cadillac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Cadillac Project GTP Hypercar' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Cadillac Project GTP Hypercar', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '099/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX40', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/88/LeMonstreGTP.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 100/250: Porsche 904 Carrera GTS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 904 Carrera GTS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Porsche 904 Carrera GTS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 904 Carrera GTS', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '100/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX41', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/17/Porsche904GTS.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 101/250: Chevy Super Volt
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Chevy Super Volt' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Chevy Super Volt' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Chevy Super Volt', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '101/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY99', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c6/ChevyVolt.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 102/250: '76 Chevy Chevette
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''76 Chevy Chevette' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''76 Chevy Chevette' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''76 Chevy Chevette', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '102/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX43', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7b/NHRAChevette.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 103/250: TV Series Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'TV Series Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'TV Series Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'TV Series Batmobile', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '103/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX44', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ad/%2766Batmobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 104/250: Optimus Prime
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Optimus Prime' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Optimus Prime' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Optimus Prime', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '104/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW26', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/80/Optimus.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 105/250: RD-06
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'RD-06' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Designed By' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Designed By' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'RD-06' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'RD-06', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '105/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY50', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/07/RD-06.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 106/250: Sushi Tuner
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Sushi Tuner' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Sushi Tuner' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Sushi Tuner', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '106/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY51', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/75/SalmonSushi.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 107/250: Aston Martin DB4GT High-Speed Edition
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Aston Martin DB4GT High-Speed Edition' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Aston Martin' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Aston Martin DB4GT High-Speed Edition' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Aston Martin DB4GT High-Speed Edition', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '107/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY52', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ea/AstonSaltFlatRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 108/250: Slide-Burn
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Slide-Burn' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Slide-Burn' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Slide-Burn', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '108/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW28', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/08/Slide-Burn.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 109/250: Power Rocket
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Power Rocket' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Power Rocket' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Power Rocket', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '109/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY53', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/27/PowerRocket.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 110/250: Rig Storm
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rig Storm' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Rig Storm' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rig Storm', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '110/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC24', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/65/2025_Rig_Storm.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 111/250: '58 Chevy Impala
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''58 Chevy Impala' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''58 Chevy Impala' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''58 Chevy Impala', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '111/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX38', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/21/1958Impala.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 112/250: Later Crater
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Later Crater' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Later Crater' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Later Crater', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '112/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY55', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fd/RedCrater.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 113/250: Ford Escort
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Escort' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ford Escort' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Escort', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '113/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB17', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c0/FordEscortMaxi.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 114/250: Drift-Ender
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Drift-Ender' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Drift-Ender' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Drift-Ender', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '114/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW27', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/cf/Drift-Ender.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 115/250: '75 Chevy Blazer Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''75 Chevy Blazer Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt New in Mainline' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''75 Chevy Blazer Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''75 Chevy Blazer Custom', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '115/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB19', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/78/%2775Blazer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 116/250: Slide Kick
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Slide Kick' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Slide Kick' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Slide Kick', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '116/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY57', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fc/ExperiSlide.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 117/250: Flippin Fast
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Flippin Fast' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Flippin Fast' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Flippin Fast', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '117/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY58', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d3/ExperiFlip.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 118/250: Skull Shaker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Skull Shaker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Skull Shaker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Skull Shaker', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '118/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY59', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fa/ExperiSkull.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 119/250: '91 GMC Syclone
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''91 GMC Syclone' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''91 GMC Syclone' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''91 GMC Syclone', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '119/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY60', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4b/1991GMCSyclone.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 120/250: Custom Kia EV6
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom Kia EV6' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Custom Kia EV6' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom Kia EV6', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '120/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW22', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fd/KiaEV6.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 121/250: '67 Ford Mustang Coupe
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Ford Mustang Coupe' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''67 Ford Mustang Coupe' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Ford Mustang Coupe', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '121/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY62', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/63/1967MustangCustom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 122/250: Range Rover Velar
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Range Rover Velar' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Land Rover' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Range Rover Velar' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Range Rover Velar', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '122/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY63', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a3/RangeRoverVelar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 123/250: 2018 Honda Civic Type R
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2018 Honda Civic Type R' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '2018 Honda Civic Type R' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2018 Honda Civic Type R', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '123/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY64', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0d/2018HondaFK8.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 124/250: Futurismo
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Futurismo' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Futurismo' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Futurismo', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '124/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY65', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e2/Futurismo.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 125/250: 2020 Koenigsegg Jesko
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2020 Koenigsegg Jesko' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Koenigsegg' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '2020 Koenigsegg Jesko' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2020 Koenigsegg Jesko', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '125/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY66', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7f/IkeaJesko.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 126/250: HW Formula Solar
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW Formula Solar' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Earth Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Earth Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'HW Formula Solar' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW Formula Solar', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '126/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY67', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/60/SolarRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 127/250: '92 Ford Mustang
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''92 Ford Mustang' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''92 Ford Mustang' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''92 Ford Mustang', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '127/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY68', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8e/1992FordMustang.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 128/250: RRRoadster
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'RRRoadster' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'RRRoadster' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'RRRoadster', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '128/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY69', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/69/FCSter.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 129/250: '68 Dodge Dart
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''68 Dodge Dart' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''68 Dodge Dart' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''68 Dodge Dart', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '129/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY70', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4d/1968DodgeDart.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 130/250: '20 Jeep Gladiator
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''20 Jeep Gladiator' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jeep' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''20 Jeep Gladiator' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''20 Jeep Gladiator', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '130/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY71', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b0/NittoGladiator.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 131/250: '71 Dodge Challenger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''71 Dodge Challenger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''71 Dodge Challenger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''71 Dodge Challenger', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '131/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY79', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2c/1971Challenger.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 132/250: Snoopy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Snoopy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Snoopy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Snoopy', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '132/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW62', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/25/Snoopy25.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 133/250: Monster Dairy Delivery
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Monster Dairy Delivery' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Designed By' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Designed By' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Monster Dairy Delivery' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Monster Dairy Delivery', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '133/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX28', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d2/MonsterMilkDelivery.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 134/250: '68 Corvette - Gas Monkey Garage
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''68 Corvette - Gas Monkey Garage' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''68 Corvette - Gas Monkey Garage' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''68 Corvette - Gas Monkey Garage', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '134/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY74', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0c/BlownCorvette.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 135/250: Long Bloc
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Long Bloc' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Long Bloc' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Long Bloc', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '135/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW30', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/48/LongBloc.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 136/250: Salt Shaker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Salt Shaker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Salt Shaker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Salt Shaker', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '136/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY75', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2e/SaltShaker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 137/250: Rapid Pulse
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rapid Pulse' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW First Response' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW First Response' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Rapid Pulse' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rapid Pulse', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '137/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY76', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6c/EMTPulse.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 138/250: Pixel Shaker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pixel Shaker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Ride-Ons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Ride-Ons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Pixel Shaker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pixel Shaker', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '138/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY77', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/ca/OrangePixel.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 139/250: Custom '53 Cadillac
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''53 Cadillac' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Cadillac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Custom ''53 Cadillac' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''53 Cadillac', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '139/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY78', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/32/1953CaddyPickup.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 140/250: Ford Model A Custom '31
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Model A Custom ''31' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ford Model A Custom ''31' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Model A Custom ''31', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '140/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW24', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/74/OldRed.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 141/250: '85 Honda City Turbo II
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''85 Honda City Turbo II' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''85 Honda City Turbo II' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''85 Honda City Turbo II', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '141/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC25', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/58/1985HondaCity.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 142/250: McLaren W1
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'McLaren W1' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'McLaren' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'McLaren W1' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'McLaren W1', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '142/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW41', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e8/McLarenW1.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 143/250: Birthday Burner
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Birthday Burner' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers  Happy Birthday!' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers  Happy Birthday!' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Birthday Burner' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Birthday Burner', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '143/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC26', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9f/TreasureBurner.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 144/250: Nissan Skyline GT-R (BCNR33)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline GT-R (BCNR33)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Nissan Skyline GT-R (BCNR33)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline GT-R (BCNR33)', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '144/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY80', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/46/HKSPowerR33.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 145/250: Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Batmobile', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '145/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY81', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2c/BATBatmobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 146/250: Minecart
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Minecart' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Minecart' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Minecart', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '146/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY82', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fd/MinecraftMinecart.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 147/250: Chevy El Camino
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Chevy El Camino' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time New in Mainline' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Chevy El Camino' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Chevy El Camino', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '147/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY83', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/73/%2767ElCamino.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 148/250: Cone Shaker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Cone Shaker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Metro' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Metro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Cone Shaker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Cone Shaker', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '148/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW35', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/47/ConeShaker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 149/250: Quick Bite
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Quick Bite' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Quick Bite' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Quick Bite', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '149/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY84', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b2/FuegoFajitas.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 150/250: Honda CB750 Café
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda CB750 Café' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Moto' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Moto' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Honda CB750 Café' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda CB750 Café', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '150/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY85', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d1/HondaCaf%C3%A9Racer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 151/250: Rodger Dodger 2.0
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rodger Dodger 2.0' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Rodger Dodger 2.0' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rodger Dodger 2.0', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '151/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY86', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/be/EVDodger.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 152/250: '19 Chevy Silverado Trail Boss LT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''19 Chevy Silverado Trail Boss LT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''19 Chevy Silverado Trail Boss LT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''19 Chevy Silverado Trail Boss LT', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '152/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY97', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6c/TrailBossLT.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 153/250: Buns of Steel
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Buns of Steel' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Buns of Steel' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Buns of Steel', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '153/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY88', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b4/Bunso%27Steel.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 154/250: Porsche 911 Rallye
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Rallye' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Safari Mode' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Safari Mode' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Porsche 911 Rallye' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Rallye', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '154/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW87', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/14/2022PorscheDakar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 155/250: Big-Air Bel-Air
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Big-Air Bel-Air' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Safari Mode' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Safari Mode' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Big-Air Bel-Air' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Big-Air Bel-Air', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '155/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY89', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d4/OffRoadBelAir.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 156/250: HW Ultimate T-Rex Transporter
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW Ultimate T-Rex Transporter' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'HW Ultimate T-Rex Transporter' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW Ultimate T-Rex Transporter', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '156/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY90', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e0/GreenRex.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 157/250: '83 Chevy Silverado
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''83 Chevy Silverado' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''83 Chevy Silverado' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''83 Chevy Silverado', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '157/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY91', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/78/1983Silverado.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 158/250: Hoto Roto
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hoto Roto' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Hoto Roto' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hoto Roto', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '158/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW33', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/87/HotoRoto.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 159/250: Ford GT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford GT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ford GT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford GT', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '159/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY92', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c4/FordGTGT1.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 160/250: Crate Racer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Crate Racer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Crate Racer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Crate Racer', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '160/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB02', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/61/HWTiresRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 161/250: '67 Shelby GT500
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Shelby GT500' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Shelby' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mustang 60th' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mustang 60th' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''67 Shelby GT500' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Shelby GT500', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '161/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY93', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0b/1967GT500.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 162/250: 2018 Bentley Continental GT3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2018 Bentley Continental GT3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Bentley' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '2018 Bentley Continental GT3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2018 Bentley Continental GT3', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '162/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB30', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a7/BentleyGT3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 163/250: '95 Mazda RX-7 Drift
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''95 Mazda RX-7 Drift' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s New in Mainline' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''95 Mazda RX-7 Drift' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''95 Mazda RX-7 Drift', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '163/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY95', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a7/1995MazdaDrift.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 164/250: '70 Dodge Hemi Challenger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Dodge Hemi Challenger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW: ''70s vs. ''90s' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW: ''70s vs. ''90s' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''70 Dodge Hemi Challenger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Dodge Hemi Challenger', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '164/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY96', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/91/1970Challenger.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 165/250: '69 Mercury Cyclone
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''69 Mercury Cyclone' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''69 Mercury Cyclone' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''69 Mercury Cyclone', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '165/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY61', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/54/1969Cyclone.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 166/250: Disney Steamboat
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Disney Steamboat' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Screen Time' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Disney Steamboat' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Disney Steamboat', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '166/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY98', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e3/Disney%27sSteamboat.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 167/250: Mattel Dream Mobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mattel Dream Mobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Mattel 80th Anniversary' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Mattel 80th Anniversary' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mattel Dream Mobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mattel Dream Mobile', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '167/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX42', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0b/DreamCar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 168/250: Nissan Leaf NISMO RC_02
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Leaf NISMO RC_02' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Nissan Leaf NISMO RC_02' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Leaf NISMO RC_02', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '168/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC27', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2f/LeafNISMO.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 169/250: '67 Austin Mini Van
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Austin Mini Van' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Art Cars' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Art Cars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''67 Austin Mini Van' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Austin Mini Van', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '169/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB00', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/83/AustinVan.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 170/250: Madfast
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Madfast' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Track Aces' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Track Aces' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Madfast' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Madfast', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '170/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB01', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e6/BenedictMadfast.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 171/250: Amaru GTC
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Amaru GTC' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Safari Mode' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Safari Mode' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Amaru GTC' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Amaru GTC', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '171/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW36', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d0/AmaruGTC.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 172/250: Renault Espace F1
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Renault Espace F1' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Modified' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Modified' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Renault Espace F1' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Renault Espace F1', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '172/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW32', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/50/RenaultEspaceF1.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 173/250: 1978 Dodge Li'l Red Express Truck
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1978 Dodge Li''l Red Express Truck' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Hot Trucks' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Hot Trucks' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '1978 Dodge Li''l Red Express Truck' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1978 Dodge Li''l Red Express Truck', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '173/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB03', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b4/DodgePickup.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 174/250: Peugeot 9X8 Hypercar
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Peugeot 9X8 Hypercar' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Peugeot 9X8 Hypercar' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Peugeot 9X8 Hypercar', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '174/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW11', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b1/Peugeot9X8.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 175/250: '71 Mustang Funny Car
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''71 Mustang Funny Car' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mustang 60th' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mustang 60th' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''71 Mustang Funny Car' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''71 Mustang Funny Car', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '175/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB04', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3d/FordFunnyCar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 176/250: '96 Dodge Viper GTS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''96 Dodge Viper GTS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''96 Dodge Viper GTS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''96 Dodge Viper GTS', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '176/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW50', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/52/DodgeViperGTS.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 177/250: Vespa 90 SS Super Sprint (1966)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Vespa 90 SS Super Sprint (1966)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Moto' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Moto' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Vespa 90 SS Super Sprint (1966)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Vespa 90 SS Super Sprint (1966)', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '177/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB07', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b8/1966Vespa.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 178/250: '17 Ford F-150 Raptor
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''17 Ford F-150 Raptor' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''17 Ford F-150 Raptor' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''17 Ford F-150 Raptor', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '178/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB05', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/ce/2017FordRaptorRace.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 179/250: '15 Land Rover Defender Double Cab
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''15 Land Rover Defender Double Cab' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Land Rover' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''15 Land Rover Defender Double Cab' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''15 Land Rover Defender Double Cab', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '179/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB06', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/76/2015Defender.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 180/250: Chill Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Chill Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Chill Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Chill Mill', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '180/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC28', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1d/2025_Chill_Mill_%28HWLR%29.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 181/250: Honda Motocompo
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda Motocompo' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Moto' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Moto' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Honda Motocompo' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda Motocompo', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '181/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW43', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3d/HondaMotocompo.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 182/250: '62 Corvette Gasser
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''62 Corvette Gasser' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''62 Corvette Gasser' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''62 Corvette Gasser', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '182/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB08', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/cf/ChevroletCorvetteGasser.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 183/250: Drift'n Break
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Drift''n Break' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Wagons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Drift''n Break' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Drift''n Break', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '183/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB09', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/58/DriftWagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 184/250: Track Dwagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Track Dwagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Wagons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Track Dwagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Track Dwagon', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '184/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB10', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2c/Track%27dWagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 185/250: BMW 635 CSi
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'BMW 635 CSi' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'BMW' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wild Widebody' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wild Widebody' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'BMW 635 CSi' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'BMW 635 CSi', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '185/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW38', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f8/BMW635CSi.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 186/250: '89 Mercedes-Benz 560 SEC AMG
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''89 Mercedes-Benz 560 SEC AMG' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mercedes-Benz' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wild Widebody' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wild Widebody' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''89 Mercedes-Benz 560 SEC AMG' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''89 Mercedes-Benz 560 SEC AMG', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '186/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB11', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bd/560SECWidebody.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 187/250: Porsche 911 Carrera Clip
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Carrera Clip' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Porsche 911 Carrera Clip' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Carrera Clip', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '187/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB12', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fe/CarreraClip.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 188/250: Decidedly Go
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Decidedly Go' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Decidedly Go' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Decidedly Go', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '188/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW39', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/39/DecidedlyGo.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 189/250: '67 Mustang
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Mustang' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''67 Mustang' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Mustang', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '189/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB13', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/58/1967FordMustang.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 190/250: Gordon Murray Automotive T.50s
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Gordon Murray Automotive T.50s' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Gordon Murray Automotive T.50s' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Gordon Murray Automotive T.50s', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '190/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB14', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/56/GMAT.50s.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 191/250: Ferrari SF90 Stradale
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ferrari SF90 Stradale' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ferrari SF90 Stradale' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ferrari SF90 Stradale', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '191/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW34', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a8/FerrariSF90Stradale.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 192/250: Czinger 21C
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Czinger 21C' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Czinger 21C' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Czinger 21C', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '192/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB31', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/42/2024Czinger.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 193/250: '68 Lotus Type 49
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''68 Lotus Type 49' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lotus' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''68 Lotus Type 49' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''68 Lotus Type 49', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '193/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX18', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f9/GoldLeafLotus.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 194/250: Formula E Gen3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Formula E Gen3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Track Aces' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Track Aces' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Formula E Gen3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Formula E Gen3', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '194/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY56', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/84/McLarenFEGen3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 195/250: Alfa Romeo Giulia TI Super
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Alfa Romeo Giulia TI Super' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Alfa Romeo' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Alfa Romeo Giulia TI Super' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Alfa Romeo Giulia TI Super', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '195/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW40', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f3/AlfaRomeoGiuliaTISuper.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 196/250: Mazda RX-3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda RX-3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mazda RX-3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda RX-3', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '196/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYX24', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/56/%27ToonedMazdaRX-3GT.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 197/250: Hot Wheengs
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hot Wheengs' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Fast Foodie' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Fast Foodie' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Hot Wheengs' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hot Wheengs', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '197/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW42', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2f/HotWheengs.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 198/250: Ferrari F40 Competizione
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ferrari F40 Competizione' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ferrari F40 Competizione' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ferrari F40 Competizione', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '198/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW59', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/66/FerrariF40Competizione.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 199/250: Audi 90 quattro
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Audi 90 quattro' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Audi 90 quattro' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Audi 90 quattro', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '199/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB20', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/61/AudiQuattroGTO.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 200/250: VW T3 Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'VW T3 Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volkswagen' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'VW T3 Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'VW T3 Custom', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '200/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB21', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5d/VolkswagenT3Custom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 201/250: Honda Civic Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda Civic Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Reverse Rake' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Reverse Rake' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Honda Civic Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda Civic Custom', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '201/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB22', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/74/Honda_Civic_Custom_2025.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 202/250: Chevroletor
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Chevroletor' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Track Aces' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Track Aces' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Chevroletor' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Chevroletor', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '202/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC29', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/15/2025_General_Motors_Chevroletor.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 203/250: Lil' Roar
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lil'' Roar' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Safari Mode' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Safari Mode' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Lil'' Roar' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lil'' Roar', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '203/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW44', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b7/Lil%27Roar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 204/250: Terra-Tracktyl
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Terra-Tracktyl' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Terra-Tracktyl' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Terra-Tracktyl', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '204/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB23', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/53/Terratracktyl.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 205/250: Pontiac Aztek Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pontiac Aztek Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pontiac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wild Widebody' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wild Widebody' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Pontiac Aztek Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pontiac Aztek Custom', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '205/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB24', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/50/2004PontiacAztek.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 206/250: Speed Driver
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Speed Driver' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Speed Driver' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Speed Driver', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '206/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB25', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c5/SpeedDriver.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 207/250: Ravenger S/T
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ravenger S/T' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ravenger S/T' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ravenger S/T', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '207/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB26', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d5/Bluevenger.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 208/250: '69 Dodge Coronet Superbee
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''69 Dodge Coronet Superbee' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''69 Dodge Coronet Superbee' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''69 Dodge Coronet Superbee', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '208/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB27', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/37/DodgeSuperbee.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 209/250: McLaren Speedtail
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'McLaren Speedtail' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'McLaren' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Exotics' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Exotics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'McLaren Speedtail' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'McLaren Speedtail', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '209/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB28', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/96/2019McLarenSpeedtail.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 210/250: Land Rover Defender 90
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Land Rover Defender 90' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Land Rover' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Land Rover Defender 90' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Land Rover Defender 90', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '210/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB29', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3e/LandRoverNinety.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 211/250: Custom '18 Ford Mustang GT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''18 Ford Mustang GT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mustang 60th' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mustang 60th' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Custom ''18 Ford Mustang GT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''18 Ford Mustang GT', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '211/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYY94', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/74/2018CustomMustang.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 212/250: Honda S800 Racing
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda S800 Racing' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Honda S800 Racing' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda S800 Racing', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '212/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC30', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a9/1968HondaS800.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 213/250: Lotus Cortina
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lotus Cortina' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lotus' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Lotus Cortina' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lotus Cortina', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '213/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW46', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/76/LotusCortina.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 214/250: 2013 SRT Viper
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2013 SRT Viper' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '2013 SRT Viper' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2013 SRT Viper', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '214/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB15', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3a/2013SRTViper.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 215/250: Blitzspeeder
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Blitzspeeder' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Blitzspeeder' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Blitzspeeder', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '215/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB32', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/04/Greenspeeder.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 216/250: Quick Chat
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Quick Chat' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Quick Chat' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Quick Chat', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '216/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW45', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/30/QuickChat.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 217/250: King Kuda
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'King Kuda' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'King Kuda' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'King Kuda', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '217/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB33', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/44/KingKuda.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 218/250: Mod Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mod Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mod Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mod Mill', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '218/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW47', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/72/ModMill.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 219/250: Ford Mustang Dark Horse
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Mustang Dark Horse' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ford Mustang Dark Horse' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Mustang Dark Horse', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '219/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB34', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/64/DRKHRS.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 220/250: Porsche 911 GT3 RS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 GT3 RS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Porsche 911 GT3 RS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 GT3 RS', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '220/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB35', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/07/2016PorscheGT3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 221/250: '94 Bugatti EB110 SS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''94 Bugatti EB110 SS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Bugatti' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''94 Bugatti EB110 SS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''94 Bugatti EB110 SS', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '221/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB36', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b4/1994Bugatti.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 222/250: Ferrari 365 GTB4 Competizione
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ferrari 365 GTB4 Competizione' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Race Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Race Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ferrari 365 GTB4 Competizione' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ferrari 365 GTB4 Competizione', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '222/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW48', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ed/Ferrari365Competizione.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 223/250: Layin' Lowrider
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Layin'' Lowrider' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Cinco de Mayo' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Cinco de Mayo' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Layin'' Lowrider' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Layin'' Lowrider', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '223/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB37', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/50/Cincorider.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 224/250: Honda VFR750R (RC30)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda VFR750R (RC30)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Moto' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Moto' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Honda VFR750R (RC30)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda VFR750R (RC30)', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '224/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW51', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/47/HondaVFR750R.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 225/250: Pagani Utopia
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pagani Utopia' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pagani' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Pagani Utopia' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pagani Utopia', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '225/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB38', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/35/2025PaganiUtopia.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 226/250: Mazda 787B
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda 787B' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mazda 787B' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda 787B', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '226/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB39', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/cc/Mazdaspeed787B.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 227/250: Volvo 240 Drift Wagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Volvo 240 Drift Wagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volvo' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Wagons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Volvo 240 Drift Wagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Volvo 240 Drift Wagon', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '227/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB40', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/19/HYY20loose.png/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 228/250: Twin Dorado
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Twin Dorado' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Twin Dorado' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Twin Dorado', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '228/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW49', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a1/TwinDorado.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 229/250: Shark Bite
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Shark Bite' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Shark Bite' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Shark Bite', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '229/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC31', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b1/2025_Shark_Bite.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 230/250: '73 Pontiac Firebird
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''73 Pontiac Firebird' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pontiac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''73 Pontiac Firebird' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''73 Pontiac Firebird', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '230/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB41', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ac/1973Firebird.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 231/250: '73 Honda Civic Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''73 Honda Civic Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''73 Honda Civic Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''73 Honda Civic Custom', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '231/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB42', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/81/1973CustomCivic.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 232/250: 1966 Bat Boat
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1966 Bat Boat' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '1966 Bat Boat' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1966 Bat Boat', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '232/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW57', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/91/Batboat.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 233/250: Custom '56 Ford Truck
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''56 Ford Truck' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Day of the Dead/Halloween' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Day of the Dead/Halloween' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Custom ''56 Ford Truck' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''56 Ford Truck', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '233/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB43', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/09/FordTruckCustom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 234/250: Feline Lucky
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Feline Lucky' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers  Maneki-neko Day' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers  Maneki-neko Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Feline Lucky' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Feline Lucky', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '234/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW52', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e2/FelineLucky.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 235/250: 1966 Triumph Tiger 100
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1966 Triumph Tiger 100' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Moto' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Moto' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '1966 Triumph Tiger 100' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1966 Triumph Tiger 100', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '235/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC32', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9b/TriumphRaceBike.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 236/250: Limited Grip
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Limited Grip' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Limited Grip' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Limited Grip', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '236/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB44', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e1/LimitedGripDriftTruck.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 237/250: McMurtry Spéirling
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'McMurtry Spéirling' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'McMurtry Spéirling' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'McMurtry Spéirling', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '237/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW55', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/92/McMurtrySp%C3%A9irling.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 238/250: Jaguar XJC V12 Coupe
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Jaguar XJC V12 Coupe' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jaguar' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wild Widebody' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wild Widebody' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Jaguar XJC V12 Coupe' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Jaguar XJC V12 Coupe', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '238/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW54', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/be/JaguarXJC.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 239/250: Porsche 911 Turbo Cabriolet
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Turbo Cabriolet' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Porsche 911 Turbo Cabriolet' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Turbo Cabriolet', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '239/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW37', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/97/964TurboConvertible.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 240/250: '20 Dodge Charger Hellcat
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''20 Dodge Charger Hellcat' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''20 Dodge Charger Hellcat' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''20 Dodge Charger Hellcat', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '240/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB45', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/94/2020DodgeHellcat.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 241/250: Mo-Stash
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mo-Stash' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Celebration Racers Movember' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Celebration Racers Movember' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mo-Stash' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mo-Stash', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '241/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB46', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3e/MO-STASH_JBB46_1_C.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 242/250: El Segundo Rallye
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'El Segundo Rallye' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'El Segundo Rallye' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'El Segundo Rallye', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '242/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW58', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c5/ElSegundoRallye.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 243/250: Mazda RX-3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda RX-3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Mazda RX-3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda RX-3', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '243/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB47', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0d/Mazzdarx32025.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 244/250: Gone Mad
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Gone Mad' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Wagons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Gone Mad' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Gone Mad', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '244/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW56', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/32/GoneMad.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 245/250: BMW M3 Wagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'BMW M3 Wagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'BMW' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Wagons' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'BMW M3 Wagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'BMW M3 Wagon', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '245/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB48', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/68/M3WagonGreen.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 246/250: '84 Audi Sport quattro
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''84 Audi Sport quattro' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wild Widebody' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wild Widebody' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '''84 Audi Sport quattro' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''84 Audi Sport quattro', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '246/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC33', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/63/1984quattro.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 247/250: Ford RS200
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford RS200' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit New in Mainline' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Ford RS200' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford RS200', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '247/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBB49', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c7/Regular_2025_Ford_RS200.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 248/250: Polestar TRX
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Polestar TRX' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Peak Pursuit' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Peak Pursuit' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Polestar TRX' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Polestar TRX', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '248/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW29', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c6/PolestarTRX.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 249/250: Triumph TR6
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Triumph TR6' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Track Champs' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Track Champs' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = 'Triumph TR6' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Triumph TR6', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '249/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JBC34', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ae/2025_Triumph_TR6.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2025 250/250: 1983 Porsche 928S
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1983 Porsche 928S' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Muscle Mania' AND year = 2025 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Muscle Mania' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2025 AND name = '1983 Porsche 928S' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1983 Porsche 928S', 2025, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '250/250', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'HYW53', 'Mattel Mainline 2025')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c1/Porsche928.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 001/250: Mazda MX-5 Miata
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda MX-5 Miata' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mazda MX-5 Miata' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda MX-5 Miata', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '001/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ02', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/26/CyberpunkMazda.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 002/250: '16 Lamborghini Centenario Roadster
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''16 Lamborghini Centenario Roadster' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lamborghini' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''16 Lamborghini Centenario Roadster' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''16 Lamborghini Centenario Roadster', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '002/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH80', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fd/LamborghiniCentenario.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 003/250: Gordon Murray Automotive T.33
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Gordon Murray Automotive T.33' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Gordon Murray Automotive T.33' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Gordon Murray Automotive T.33', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '003/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ62', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/37/2025GMAT.33.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 004/250: Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Batmobile', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '004/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH83', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0f/GunmetalBatmobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 005/250: Pass 'n Go
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pass ''n Go' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drop Tops' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drop Tops' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Pass ''n Go' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pass ''n Go', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '005/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH30', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/19/Pass%27nGo.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 006/250: RD-06
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'RD-06' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'RD-06' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'RD-06', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '006/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH84', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d4/XRD-06.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 007/250: Solar Reflex
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Solar Reflex' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Solar Reflex' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Solar Reflex', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '007/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH85', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/86/SolarReflexEV.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 008/250: Ford Mustang Mach-E 1400
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Mustang Mach-E 1400' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ford Mustang Mach-E 1400' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Mustang Mach-E 1400', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '008/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH86', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/32/MustangMach-E1400.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 009/250: '87 Buick Regal GNX
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''87 Buick Regal GNX' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''87 Buick Regal GNX' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''87 Buick Regal GNX', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '009/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM00', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7e/BuickRegal.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 010/250: 2020 Ford Mustang Shelby GT500
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2020 Ford Mustang Shelby GT500' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '2020 Ford Mustang Shelby GT500' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2020 Ford Mustang Shelby GT500', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '010/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH87', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/00/2020FordShelbyGT500.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 011/250: 2018 Honda Civic Type R
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2018 Honda Civic Type R' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '2018 Honda Civic Type R' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2018 Honda Civic Type R', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '011/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH88', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6a/2018FK8.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 012/250: Carbonator
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Carbonator' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Carbonator' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Carbonator', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '012/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH89', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d6/HNY26Carbonator.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 013/250: Drift-Ender
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Drift-Ender' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Truckin'' Along' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Truckin'' Along' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Drift-Ender' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Drift-Ender', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '013/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH90', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3d/DriftDefender.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 014/250: '20 Jeep Gladiator
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''20 Jeep Gladiator' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jeep' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Truckin'' Along' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Truckin'' Along' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''20 Jeep Gladiator' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''20 Jeep Gladiator', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '014/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH91', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1b/2020Gladiator.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 015/250: Porsche 911 Carrera T
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Carrera T' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Porsche 911 Carrera T' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Carrera T', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '015/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH33', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/94/Porsche911CarreraT.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 016/250: Maserati Shamal
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Maserati Shamal' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Maserati' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Maserati Shamal' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Maserati Shamal', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '016/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH92', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fa/1992MaseratiShamal.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 017/250: Bounce'n Bass
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Bounce''n Bass' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Layin'' Low' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Layin'' Low' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Bounce''n Bass' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Bounce''n Bass', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '017/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH32', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/34/Bounce%27nBass.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 018/250: Deora II
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Deora II' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fan Driven' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fan Driven' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Deora II' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Deora II', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '018/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH93', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0e/Surfin%27Deora.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 019/250: Rodger Dodger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rodger Dodger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fan Driven' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fan Driven' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Rodger Dodger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rodger Dodger', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '019/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH94', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e9/FanDrivenDodger.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 020/250: McLaren Formula 1 Team
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'McLaren Formula 1 Team' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'McLaren' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Formula 1' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Formula 1' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'McLaren Formula 1 Team' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'McLaren Formula 1 Team', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '020/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH95', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/dc/McLarenMastercardMCL39.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 021/250: Barbie Dream Camper
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Barbie Dream Camper' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Barbie' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mattel' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mattel' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Barbie Dream Camper' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Barbie Dream Camper', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '021/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH96', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ef/Dreamcamper.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 022/250: Instant Boost
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Instant Boost' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Instant Boost' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Instant Boost', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '022/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH31', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b3/InstantBoost.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 023/250: '69 Dodge Charger Daytona
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''69 Dodge Charger Daytona' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''69 Dodge Charger Daytona' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''69 Dodge Charger Daytona', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '023/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH97', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8c/1969DodgeDaytona.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 024/250: Track Ripper
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Track Ripper' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Track Ripper' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Track Ripper', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '024/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH82', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0d/TrackRipper.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 025/250: McMurtry Spéirling
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'McMurtry Spéirling' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'McMurtry Spéirling' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'McMurtry Spéirling', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '025/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH81', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f7/McMurtrySp%C3%A9irlingPure.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 026/250: Pagani Zonda Cinque
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pagani Zonda Cinque' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pagani' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Pagani Zonda Cinque' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pagani Zonda Cinque', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '026/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH34', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/99/%27ToonedZonda.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 027/250: Optimus Prime
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Optimus Prime' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Optimus Prime' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Optimus Prime', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '027/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ00', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/80/Optimus.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 028/250: HW K.I.T.T. Concept
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW K.I.T.T. Concept' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'HW K.I.T.T. Concept' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW K.I.T.T. Concept', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '028/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH98', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/db/HWKITTConcept.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 029/250: '92 Dodge Viper RT/10
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''92 Dodge Viper RT/10' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drop Tops' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drop Tops' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''92 Dodge Viper RT/10' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''92 Dodge Viper RT/10', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '029/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM01', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a5/1992Viper.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 030/250: X-Steam
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'X-Steam' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'X-Steam' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'X-Steam', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '030/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ01', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d4/X-SteamRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 031/250: La Liebre
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'La Liebre' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'La Liebre' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'La Liebre', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '031/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH36', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/21/LaLiebre.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 032/250: 5 Alarm
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '5 Alarm' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Heavyweights' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Heavyweights' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '5 Alarm' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '5 Alarm', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '032/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ03', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7f/HW5Alarm.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 033/250: Haulerback
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Haulerback' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Heavyweights' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Heavyweights' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Haulerback' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Haulerback', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '033/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ04', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/52/CyberpunkTowtruck.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 034/250: Porsche Taycan Turbo S
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche Taycan Turbo S' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Porsche Taycan Turbo S' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche Taycan Turbo S', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '034/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ05', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5d/2026PorscheTaycan.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 035/250: Wattzup
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Wattzup' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Wattzup' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Wattzup', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '035/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ06', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/55/TazerRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 036/250: '70 Dodge Hemi Challenger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Dodge Hemi Challenger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''70 Dodge Hemi Challenger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Dodge Hemi Challenger', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '036/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ07', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5a/1970DodgeChallengerHemi.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 037/250: Cupra e-Racer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Cupra e-Racer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Cupra e-Racer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Cupra e-Racer', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '037/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ08', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d9/NightspeedCupra.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 038/250: 24/Seven
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '24/Seven' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '24/Seven' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '24/Seven', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '038/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ09', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/de/24-Seven.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 039/250: Roller Toaster
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Roller Toaster' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Roller Toaster' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Roller Toaster', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '039/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ10', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/39/RollerToaster.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 040/250: Braille Racer - Twin Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Braille Racer - Twin Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW All Drivers Welcome World Braille Day' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW All Drivers Welcome World Braille Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Braille Racer - Twin Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Braille Racer - Twin Mill', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '040/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ11', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/42/BrailleRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 041/250: Ferrari SF90 Stradale
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ferrari SF90 Stradale' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Ferrari' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Ferrari' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ferrari SF90 Stradale' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ferrari SF90 Stradale', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '041/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ12', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c5/2024FerrariSF90.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 042/250: '83 Chevy Silverado
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''83 Chevy Silverado' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Truckin'' Along' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Truckin'' Along' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''83 Chevy Silverado' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''83 Chevy Silverado', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '042/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ13', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d7/BlackWidowSilverado.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 043/250: Ford Mustang GTD
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Mustang GTD' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ford Mustang GTD' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Mustang GTD', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '043/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ14', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/50/2026FordMustangGTD.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 044/250: '59 Chevy Impala
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''59 Chevy Impala' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Layin'' Low' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Layin'' Low' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''59 Chevy Impala' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''59 Chevy Impala', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '044/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ15', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/05/1959Impala.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 045/250: '47 Chevy Fleetline
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''47 Chevy Fleetline' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Layin'' Low' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Layin'' Low' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''47 Chevy Fleetline' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''47 Chevy Fleetline', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '045/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ16', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/86/1947Fleetline.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 046/250: Purple Passion
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Purple Passion' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fan Driven' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fan Driven' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Purple Passion' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Purple Passion', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '046/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ17', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/96/PinkPassion.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 047/250: High-Tail Chaser
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'High-Tail Chaser' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mods' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mods' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'High-Tail Chaser' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'High-Tail Chaser', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '047/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH35', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e0/High-TailChaser.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 048/250: Monster High Ghoul Mobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Monster High Ghoul Mobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mattel' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mattel' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Monster High Ghoul Mobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Monster High Ghoul Mobile', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '048/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ19', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/88/MonsterHighCar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 049/250: Quick Chat
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Quick Chat' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mattel' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mattel' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Quick Chat' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Quick Chat', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '049/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ18', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1f/PhoneCall.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 050/250: Bugatti Bolide
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Bugatti Bolide' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Bugatti' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Bugatti Bolide' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Bugatti Bolide', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '050/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ20', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/92/RacingBolide.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 051/250: The Dark Knight Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'The Dark Knight Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'The Dark Knight Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'The Dark Knight Batmobile', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '051/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ21', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fe/TheTumbler.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 052/250: Porsche 911 Turbo Cabriolet
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Turbo Cabriolet' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drop Tops' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drop Tops' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Porsche 911 Turbo Cabriolet' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Turbo Cabriolet', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '052/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ22', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b9/964Turbo.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 053/250: '69 Chevelle
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''69 Chevelle' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''69 Chevelle' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''69 Chevelle', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '053/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ23', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a0/1969Chevelle.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 054/250: Donut Drifter
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Donut Drifter' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Sweet Rides' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Sweet Rides' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Donut Drifter' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Donut Drifter', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '054/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ24', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/77/DonutCar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 055/250: Dessert Drifter
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Dessert Drifter' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Sweet Rides' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Sweet Rides' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Dessert Drifter' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Dessert Drifter', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '055/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ25', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9b/JelloCar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 056/250: '67 Camaro
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Camaro' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''67 Camaro' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Camaro', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '056/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ26', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c0/DreamCamaro.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 057/250: Raijin Express
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Raijin Express' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Heavyweights' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Heavyweights' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Raijin Express' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Raijin Express', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '057/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ27', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/33/NekoRaijin.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 058/250: Electro Silhouette
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Electro Silhouette' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Electro Silhouette' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Electro Silhouette', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '058/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM02', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7f/ElectroSilhouetteTH.jpeg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 059/250: Lucid Air
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lucid Air' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Lucid Air' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lucid Air', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '059/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ28', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6b/2022LucidAir.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 060/250: Toyota Prius Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Toyota Prius Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Toyota Prius Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Toyota Prius Custom', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '060/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH37', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c0/ToyotaPriusCustom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 061/250: Mazda RX-7
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda RX-7' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mazda RX-7' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda RX-7', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '061/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ29', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ea/1978MazdaRX-7.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 062/250: Ferrari 365 GTB4 Competizione
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ferrari 365 GTB4 Competizione' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Ferrari' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Ferrari' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ferrari 365 GTB4 Competizione' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ferrari 365 GTB4 Competizione', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '062/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ30', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f1/365Comp.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 063/250: Ferrari F40 Competizione
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ferrari F40 Competizione' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Ferrari' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Ferrari' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ferrari F40 Competizione' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ferrari F40 Competizione', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '063/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ31', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a2/FerrariF40Comp.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 064/250: Mercedes-Benz Unimog 1300L
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mercedes-Benz Unimog 1300L' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mercedes-Benz' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Truckin'' Along' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Truckin'' Along' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mercedes-Benz Unimog 1300L' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mercedes-Benz Unimog 1300L', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '064/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ32', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/64/Unimog1300.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 065/250: Drift Box
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Drift Box' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Drift Box' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Drift Box', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '065/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH40', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3f/DriftBox.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 066/250: '17 Audi RS 6 Avant
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''17 Audi RS 6 Avant' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''17 Audi RS 6 Avant' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''17 Audi RS 6 Avant', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '066/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ33', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1a/2017Avant.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 067/250: Lotus Cortina
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lotus Cortina' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lotus' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Lotus Cortina' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lotus Cortina', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '067/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ34', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/99/1963Cortina.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 068/250: Visa Cash App Racing Bulls Formula One Team
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Visa Cash App Racing Bulls Formula One Team' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Formula 1' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Formula 1' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Visa Cash App Racing Bulls Formula One Team' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Visa Cash App Racing Bulls Formula One Team', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '068/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ35', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e8/VCARB02.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 069/250: Volvo 240 Drift Wagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Volvo 240 Drift Wagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volvo' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mods' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mods' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Volvo 240 Drift Wagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Volvo 240 Drift Wagon', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '069/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ36', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a4/VolvoDriftWagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 070/250: Decidedly Go
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Decidedly Go' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mattel' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mattel' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Decidedly Go' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Decidedly Go', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '070/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ37', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/dd/8Ballin%27.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 071/250: Austin Mini Cooper S
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Austin Mini Cooper S' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Austin Mini Cooper S' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Austin Mini Cooper S', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '071/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH39', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c8/AustinMini.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 072/250: Datsun 240Z
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Datsun 240Z' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Datsun 240Z' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Datsun 240Z', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '072/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ38', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/17/1972240Z.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 073/250: BMW M4 GT3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'BMW M4 GT3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'BMW' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'BMW M4 GT3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'BMW M4 GT3', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '073/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JNG69', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8d/BMWM4GT3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 074/250: McLaren W1
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'McLaren W1' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'McLaren' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'McLaren W1' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'McLaren W1', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '074/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ39', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c8/2025W1.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 075/250: X-cceleron
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'X-cceleron' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'X-cceleron' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'X-cceleron', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '075/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH43', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/17/X-cceleron.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 076/250: '76 Chevy Chevette
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''76 Chevy Chevette' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''76 Chevy Chevette' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''76 Chevy Chevette', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '076/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ40', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8b/DragChevette.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 077/250: Supercharged
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Supercharged' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Supercharged' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Supercharged', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '077/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ41', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/63/NHRASupercharged.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 078/250: Hako Type D
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hako Type D' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Hako Type D' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hako Type D', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '078/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ43', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b7/CompactSupotsuka.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 079/250: Hoto Roto
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hoto Roto' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Hoto Roto' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hoto Roto', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '079/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ44', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/57/BlackRoto.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 080/250: Kei Swap
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Kei Swap' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Kei Swap' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Kei Swap', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '080/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ65', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/71/GabeSwap.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 081/250: Hot Wheengs
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hot Wheengs' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Hot Wheengs' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hot Wheengs', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '081/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM03', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/59/HotSauce.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 082/250: Birthday Burner
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Birthday Burner' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Sweet Rides' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Sweet Rides' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Birthday Burner' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Birthday Burner', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '082/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ45', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c7/CakeBake.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 083/250: Rapid Pulse
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Rapid Pulse' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Heavyweights' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Heavyweights' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Rapid Pulse' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Rapid Pulse', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '083/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ46', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e7/TrackPulse.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 084/250: Polestar TRX
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Polestar TRX' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Polestar TRX' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Polestar TRX', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '084/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ47', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6f/RacingTRX.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 085/250: Voltage Spike
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Voltage Spike' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Voltage Spike' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Voltage Spike', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '085/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ48', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b7/Spiker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 086/250: VW ID. Buzz Bomb
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'VW ID. Buzz Bomb' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volkswagen' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'VW ID. Buzz Bomb' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'VW ID. Buzz Bomb', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '086/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH46', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e5/VolkswagenID.BuzzBomb.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 087/250: Cruise Bruiser
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Cruise Bruiser' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Cruise Bruiser' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Cruise Bruiser', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '087/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ49', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/49/TanBruiser.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 088/250: Nissan Skyline 2000 GT-R
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline 2000 GT-R' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Nissan Skyline 2000 GT-R' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline 2000 GT-R', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '088/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ50', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c6/1973NissanKenmeri.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 089/250: 1985 Honda CR-X
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1985 Honda CR-X' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '1985 Honda CR-X' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1985 Honda CR-X', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '089/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ51', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fc/1985HondaCR-XMugen.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 090/250: '16 Cadillac ATS-V R
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''16 Cadillac ATS-V R' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Cadillac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''16 Cadillac ATS-V R' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''16 Cadillac ATS-V R', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '090/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ52', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b4/CadillacGT3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 091/250: LB-WORKS Lamborghini Huracán Coupé
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'LB-WORKS Lamborghini Huracán Coupé' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lamborghini' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'LB-WORKS Lamborghini Huracán Coupé' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'LB-WORKS Lamborghini Huracán Coupé', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '091/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ53', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5d/LBHurac%C3%A1n.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 092/250: Feline Lucky
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Feline Lucky' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Feline Lucky' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Feline Lucky', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '092/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ54', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/91/I%27mFelineLucky.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 093/250: Coupé Clip
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Coupé Clip' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Coupé Clip' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Coupé Clip', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '093/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ55', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7d/Coup%C3%A9Clip.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 094/250: Ferrari 12Cilindri
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ferrari 12Cilindri' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Ferrari' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Ferrari' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ferrari 12Cilindri' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ferrari 12Cilindri', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '094/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH41', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6f/Ferrari12Cilindri.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 095/250: '64 Impala
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''64 Impala' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Layin'' Low' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Layin'' Low' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''64 Impala' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''64 Impala', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '095/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ56', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c8/1964ChevroletImpala.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 096/250: El Segundo Coupe
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'El Segundo Coupe' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fan Driven' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fan Driven' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'El Segundo Coupe' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'El Segundo Coupe', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '096/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ57', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/ec/RacingCoupe.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 097/250: Corvette Grand Sport
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Corvette Grand Sport' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Corvette Grand Sport' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Corvette Grand Sport', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '097/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ58', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/54/C2GrandSport.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 098/250: '96 Porsche Carrera
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''96 Porsche Carrera' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''96 Porsche Carrera' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''96 Porsche Carrera', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '098/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ59', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/01/1996Porsche996.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 099/250: Renault Espace F1
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Renault Espace F1' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Renault Espace F1' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Renault Espace F1', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '099/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ60', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4d/RacingEspace.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 100/250: Twin Dorado
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Twin Dorado' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Twin Dorado' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Twin Dorado', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '100/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ61', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/44/RacingDorado.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 101/250: '17 Pagani Huayra Roadster
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''17 Pagani Huayra Roadster' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pagani' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''17 Pagani Huayra Roadster' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''17 Pagani Huayra Roadster', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '101/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH99', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ac/2017Huayra.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 102/250: Pass'n Gasser
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pass''n Gasser' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Pass''n Gasser' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pass''n Gasser', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '102/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK30', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7e/Passin%27Gas.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 103/250: Eggshelleracer
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Eggshelleracer' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Eggshelleracer' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Eggshelleracer', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '103/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH47', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0e/Eggshelleracer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 104/250: '68 Dodge Dart
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''68 Dodge Dart' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''68 Dodge Dart' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''68 Dodge Dart', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '104/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ63', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/89/1968Dart.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 105/250: '85 Honda City Turbo II
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''85 Honda City Turbo II' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''85 Honda City Turbo II' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''85 Honda City Turbo II', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '105/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ66', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4f/HondaCityTurbo.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 106/250: Mazda RX-3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda RX-3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mazda RX-3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda RX-3', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '106/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ82', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/43/MazdaRX-3Custom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 107/250: 1966 Bat Boat
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1966 Bat Boat' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '1966 Bat Boat' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1966 Bat Boat', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '107/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ67', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7b/1966Batboat.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 108/250: The Simpsons Family Car
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'The Simpsons Family Car' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'The Simpsons Family Car' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'The Simpsons Family Car', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '108/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ68', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6f/SimpsonsCar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 109/250: Time Shifter
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Time Shifter' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Time Shifter' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Time Shifter', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '109/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ69', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0a/Shiftin%27Time.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 110/250: '70 Chevelle SS Wagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Chevelle SS Wagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''70 Chevelle SS Wagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Chevelle SS Wagon', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '110/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ70', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c4/ATNChevelle.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 111/250: Long Bloc
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Long Bloc' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Long Bloc' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Long Bloc', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '111/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ71', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d0/MoonBloc.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 112/250: '89 Mazda Savanna RX-7 FC3S
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''89 Mazda Savanna RX-7 FC3S' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''89 Mazda Savanna RX-7 FC3S' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''89 Mazda Savanna RX-7 FC3S', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '112/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ72', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7b/1989MazdaRX-7.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 113/250: Corvette C7 Z06
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Corvette C7 Z06' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Corvette C7 Z06' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Corvette C7 Z06', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '113/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ73', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/14/2015CorvetteZ06.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 114/250: Custom '66 Toronado
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''66 Toronado' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Custom ''66 Toronado' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''66 Toronado', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '114/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH45', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/91/OldsToronado.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 115/250: Custom 2020 Honda e
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom 2020 Honda e' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Custom 2020 Honda e' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom 2020 Honda e', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '115/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JMB11', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a0/HondaeCustom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 116/250: '87 Ford Sierra Cosworth
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''87 Ford Sierra Cosworth' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''87 Ford Sierra Cosworth' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''87 Ford Sierra Cosworth', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '116/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ74', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c4/1987Sierra.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 117/250: Erikenstein Rod
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Erikenstein Rod' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Erikenstein Rod' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Erikenstein Rod', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '117/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ75', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/61/GreenRod.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 118/250: Pedal Driver
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Pedal Driver' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Pedal Driver' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Pedal Driver', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '118/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ77', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/26/PedalDriver.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 119/250: '33 Ford Lo Boy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''33 Ford Lo Boy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''33 Ford Lo Boy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''33 Ford Lo Boy', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '119/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ76', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/ae/FordLoBoy.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 120/250: Scuderia Ferrari HP
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Scuderia Ferrari HP' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Formula 1' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Formula 1' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Scuderia Ferrari HP' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Scuderia Ferrari HP', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '120/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ78', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9a/ScuderiaFerrariSF-25.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 121/250: 2023 Nissan Z
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2023 Nissan Z' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '2023 Nissan Z' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2023 Nissan Z', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '121/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ79', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9d/2023NissanZSport.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 122/250: Cone Shaker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Cone Shaker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Cone Shaker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Cone Shaker', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '122/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM04', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d7/HotConez.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 123/250: Maserati Tipo 61
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Maserati Tipo 61' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Maserati' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Maserati Tipo 61' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Maserati Tipo 61', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '123/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH44', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/76/MaseratiBirdcage.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 124/250: 2016 Ford GT Race
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2016 Ford GT Race' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '2016 Ford GT Race' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2016 Ford GT Race', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '124/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM05', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6a/2016FordGTLMGTE.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 125/250: 2024 Aston Martin Vantage GT3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2024 Aston Martin Vantage GT3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Aston Martin' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '2024 Aston Martin Vantage GT3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2024 Aston Martin Vantage GT3', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '125/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH55', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1f/AstonMartinVantageAMRGT3Evo.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 126/250: '64 Dodge 330
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''64 Dodge 330' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers New in Mainline' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''64 Dodge 330' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''64 Dodge 330', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '126/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ64', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e0/1964Dodge330.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 127/250: Custom '72 Chevy LUV
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''72 Chevy LUV' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Custom ''72 Chevy LUV' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''72 Chevy LUV', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '127/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ80', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b7/1972LUV.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 128/250: Datsun 620
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Datsun 620' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Datsun 620' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Datsun 620', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '128/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JPJ80', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d4/DatsunnyDay.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 129/250: Standard Kart
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Standard Kart' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Standard Kart' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Standard Kart', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '129/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ83', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/22/StandardKart.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 130/250: 2019 Audi R8 Spyder
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2019 Audi R8 Spyder' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drop Tops' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drop Tops' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '2019 Audi R8 Spyder' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2019 Audi R8 Spyder', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '130/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ84', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fa/2019AudiR8.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 131/250: Fiat Beast of Turin
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Fiat Beast of Turin' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Fiat' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drop Tops' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drop Tops' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Fiat Beast of Turin' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Fiat Beast of Turin', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '131/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH48', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/64/FiatS76Record.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 132/250: Bullet Proof
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Bullet Proof' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'X-Raycers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'X-Raycers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Bullet Proof' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Bullet Proof', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '132/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ85', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9d/BulletProof.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 133/250: 8 Crate
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '8 Crate' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '8 Crate' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '8 Crate', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '133/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ86', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/47/8CrateRanchWagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 134/250: '20 Dodge Charger Hellcat
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''20 Dodge Charger Hellcat' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Nightspeed' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nightspeed' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''20 Dodge Charger Hellcat' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''20 Dodge Charger Hellcat', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '134/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ87', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e4/2020Hellcat.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 135/250: Flippin Fast
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Flippin Fast' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW All Drivers Welcome World Autism Awareness Day' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW All Drivers Welcome World Autism Awareness Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Flippin Fast' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Flippin Fast', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '135/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ88', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6e/ADWFast.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 136/250: '98 Honda Prelude
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''98 Honda Prelude' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Factory Fresh' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Factory Fresh' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''98 Honda Prelude' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''98 Honda Prelude', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '136/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ89', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/05/1998HondaPrelude.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 137/250: La Troca
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'La Troca' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Layin'' Low' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Layin'' Low' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'La Troca' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'La Troca', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '137/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ90', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/45/1950ChevyTruck.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 138/250: Morgan Super 3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Morgan Super 3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Morgan Super 3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Morgan Super 3', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '138/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ91', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/81/Morgan3Wheeler.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 139/250: Bone Shaker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Bone Shaker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Fan Driven' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Fan Driven' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Bone Shaker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Bone Shaker', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '139/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ92', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/23/FanShaker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 140/250: Mid Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mid Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mid Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mid Mill', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '140/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ93', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/70/MoodyMill.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 141/250: Screamliner
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Screamliner' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Screamliner' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Screamliner', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '141/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ94', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/76/Rodliner.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 142/250: Mazda RX-3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda RX-3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mazda RX-3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda RX-3', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '142/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ95', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/83/%27ToonedRX-3GT.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 143/250: Deora Too'nd
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Deora Too''nd' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Deora Too''nd' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Deora Too''nd', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '143/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH50', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b1/%27ToonedDeoraII.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 144/250: Classic TV Series Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Classic TV Series Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Classic TV Series Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Classic TV Series Batmobile', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '144/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ96', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fa/%27ToonedClassicBatmobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 145/250: El Segundo Rallye
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'El Segundo Rallye' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'El Segundo Rallye' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'El Segundo Rallye', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '145/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ97', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/55/ESRallyeDirt.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 146/250: Mazda Autozam
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mazda Autozam' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mazda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mazda Autozam' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mazda Autozam', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '146/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ98', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/dd/Purplezam.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 147/250: 2 Jet Z
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2 Jet Z' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '2 Jet Z' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2 Jet Z', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '147/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM06', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f0/THJetZ.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 148/250: Tooned Purple Passion
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tooned Purple Passion' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dream Garage' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dream Garage' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Tooned Purple Passion' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tooned Purple Passion', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '148/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH54', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7e/%27ToonedPurplePassion.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 149/250: Honda Odyssey
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda Odyssey' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Honda Odyssey' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda Odyssey', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '149/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ99', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/53/2014HondaOdyssey.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 150/250: Dino 206 GT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Dino 206 GT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Ferrari' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Ferrari' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Dino 206 GT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Dino 206 GT', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '150/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH56', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/32/Dino206GT.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 151/250: Ford F-150 Lightning SuperTruck
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford F-150 Lightning SuperTruck' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Truckin'' Along' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Truckin'' Along' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ford F-150 Lightning SuperTruck' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford F-150 Lightning SuperTruck', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '151/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH52', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9d/FordSupertruck.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 152/250: BMW 635 CSi
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'BMW 635 CSi' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'BMW' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'BMW 635 CSi' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'BMW 635 CSi', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '152/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK00', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/43/1980BMW635.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 153/250: '41 Willys
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''41 Willys' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''41 Willys' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''41 Willys', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '153/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK01', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a6/WillysCoupe.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 154/250: Kick Sauber F1 Team
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Kick Sauber F1 Team' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Formula 1' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Formula 1' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Kick Sauber F1 Team' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Kick Sauber F1 Team', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '154/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK02', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4b/KickSauberC45.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 155/250: Vairstrike
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Vairstrike' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mods' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mods' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Vairstrike' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Vairstrike', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '155/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH53', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a8/Vairstrike.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 156/250: Custom Otto
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom Otto' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Mattel' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Mattel' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Custom Otto' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom Otto', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '156/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK03', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2b/CustomOtto.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 157/250: '20 Toyota GR Supra
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''20 Toyota GR Supra' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''20 Toyota GR Supra' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''20 Toyota GR Supra', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '157/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK04', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e1/2020ToyotaSupra.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 158/250: Mach Speeder
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mach Speeder' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Exoticars' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Exoticars' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mach Speeder' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mach Speeder', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '158/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK05', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/65/ExotiSpeeder.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 159/250: Honda Civic Custom
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Honda Civic Custom' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Honda' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Honda Civic Custom' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Honda Civic Custom', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '159/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJJ81', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/88/HondaCivicDragster.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 160/250: Lotus Sport Elise
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lotus Sport Elise' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lotus' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Lotus Sport Elise' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lotus Sport Elise', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '160/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK07', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/00/LotusElise.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 161/250: '70 Ford Escort RS1600
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Ford Escort RS1600' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''70 Ford Escort RS1600' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Ford Escort RS1600', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '161/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK08', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c4/1970Escort.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 162/250: Total Disposal
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Total Disposal' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Heavyweights' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Heavyweights' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Total Disposal' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Total Disposal', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '162/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM07', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/bc/%27ToonedTrashTruck.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 163/250: Cadillac Celestiq
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Cadillac Celestiq' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Cadillac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW EV' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW EV' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Cadillac Celestiq' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Cadillac Celestiq', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '163/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH49', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5f/CadillacCelestiq.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 164/250: Classic '55 Nomad
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Classic ''55 Nomad' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Classic ''55 Nomad' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Classic ''55 Nomad', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '164/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK10', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/55/1955Nomad.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 165/250: Gone Mad
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Gone Mad' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Gone Mad' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Gone Mad', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '165/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK09', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3f/WagoneMad.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 166/250: Twin Tags
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Twin Tags' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Experimotors' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Experimotors' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Twin Tags' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Twin Tags', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '166/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH64', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c6/TwinTags.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 167/250: Head Gasket
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Head Gasket' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW All Drivers Welcome International Day of Play' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW All Drivers Welcome International Day of Play' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Head Gasket' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Head Gasket', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '167/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK11', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e4/IDPGasket.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 168/250: Mailed It!
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mailed It!' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Team Wheels' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Team Wheels' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mailed It!' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mailed It!', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '168/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK12', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/63/MailDragster.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 169/250: Super Twin Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Super Twin Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Super Twin Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Super Twin Mill', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '169/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK13', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/8a/SuperTwinMillII.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 170/250: '64 Lincoln Continental
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''64 Lincoln Continental' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''64 Lincoln Continental' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''64 Lincoln Continental', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '170/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK14', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/16/LincolnContinental.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 171/250: 1983 Porsche 928S
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1983 Porsche 928S' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '1983 Porsche 928S' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1983 Porsche 928S', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '171/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK15', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2c/1983Porsche928.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 172/250: Tooned Volkswagen Golf Mk1
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Tooned Volkswagen Golf Mk1' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Volkswagen' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Tooned Volkswagen Golf Mk1' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Tooned Volkswagen Golf Mk1', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '172/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK16', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f5/VroomyGolf.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 173/250: Ferrari F2004
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ferrari F2004' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Starting Grid' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Starting Grid' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ferrari F2004' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ferrari F2004', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '173/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH51', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/12/FerrariF2004.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 174/250: Duck N' Roll
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Duck N'' Roll' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Duck N'' Roll' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Duck N'' Roll', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '174/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK17', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0e/JeepN%27Roll.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 175/250: '94 Audi Avant RS2
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''94 Audi Avant RS2' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''94 Audi Avant RS2' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''94 Audi Avant RS2', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '175/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK18', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d5/1994AudiRS2Avant.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 176/250: Subaru Impreza WRX
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Subaru Impreza WRX' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Subaru' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Subaru Impreza WRX' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Subaru Impreza WRX', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '176/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK19', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3e/2005SubaruImpreza.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 177/250: '88 Mitsubishi Starion
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''88 Mitsubishi Starion' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mitsubishi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''88 Mitsubishi Starion' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''88 Mitsubishi Starion', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '177/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH58', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d3/MitsubishiStarion.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 178/250: Click Shift
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Click Shift' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW All Drivers Welcome  Easterseals' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW All Drivers Welcome  Easterseals' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Click Shift' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Click Shift', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '178/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH61', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/10/ClickShift.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 179/250: Mountain Mauler
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mountain Mauler' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mountain Mauler' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mountain Mauler', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '179/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK20', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a3/LRMauler.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 180/250: '55 Chevy
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''55 Chevy' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''55 Chevy' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''55 Chevy', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '180/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK21', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/49/1955ChevyFever.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 181/250: Mercedes-Benz CLA HW
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mercedes-Benz CLA HW' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mercedes-Benz' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mercedes-Benz CLA HW' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mercedes-Benz CLA HW', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '181/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH63', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/75/Mercedes-BenzCLAHW.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 182/250: Chop 'n Bloc
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Chop ''n Bloc' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Chop ''n Bloc' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Chop ''n Bloc', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '182/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH60', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9c/Chop%27nBloc.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 183/250: '70 Buick GSX
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Buick GSX' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''70 Buick GSX' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Buick GSX', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '183/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK23', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/23/1970BuickGSX.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 184/250: '68 Shelby GT500
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''68 Shelby GT500' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Shelby' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''68 Shelby GT500' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''68 Shelby GT500', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '184/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK24', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/51/1968ShelbyGT500.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 185/250: Aston Martin Aramco Formula One Team
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Aston Martin Aramco Formula One Team' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Aston Martin' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Formula 1' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Formula 1' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Aston Martin Aramco Formula One Team' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Aston Martin Aramco Formula One Team', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '185/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK25', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f6/AstonMartinAramcoAMR25.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 186/250: Amaru GTC
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Amaru GTC' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mods' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mods' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Amaru GTC' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Amaru GTC', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '186/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM08', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/08/ModsAmaru.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 187/250: PT Fast
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'PT Fast' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Mods' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Mods' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'PT Fast' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'PT Fast', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '187/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH59', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/39/PTFast.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 188/250: '70 Dodge Charger
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Dodge Charger' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''70 Dodge Charger' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Dodge Charger', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '188/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK26', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/48/%27ToonedRT.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 189/250: '11 Corvette Grand Sport
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''11 Corvette Grand Sport' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''11 Corvette Grand Sport' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''11 Corvette Grand Sport', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '189/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK27', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/17/2011Corvette.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 190/250: '82 Toyota Supra
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''82 Toyota Supra' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''82 Toyota Supra' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''82 Toyota Supra', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '190/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK28', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f2/1982CelicaSupra.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 191/250: '65 Mercury Comet Cyclone
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''65 Mercury Comet Cyclone' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''65 Mercury Comet Cyclone' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''65 Mercury Comet Cyclone', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '191/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK06', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b2/1965Cyclone.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 192/250: Fiat 500C
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Fiat 500C' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Fiat' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Drag Racers' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Drag Racers' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Fiat 500C' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Fiat 500C', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '192/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK29', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/f9/Fiat500Drag.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 193/250: '63 Chevy II
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''63 Chevy II' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''63 Chevy II' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''63 Chevy II', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '193/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK31', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b9/1963ChevyII.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 194/250: Lil' Roar
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lil'' Roar' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Lil'' Roar' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lil'' Roar', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '194/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK32', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/4b/2003MiniCooper.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 195/250: Spider-Mobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Spider-Mobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Spider-Mobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Spider-Mobile', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '195/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK33', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0d/SpiderBuggy.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 196/250: Sweet Driver
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Sweet Driver' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Sweet Rides' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Sweet Rides' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Sweet Driver' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Sweet Driver', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '196/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM09', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5f/CupcakeRacer.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 197/250: Mad Drip
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mad Drip' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Sweet Rides' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Sweet Rides' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mad Drip' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mad Drip', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '197/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH57', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7c/MadDrip.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 198/250: Toyota AE86 Sprinter Trueno
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Toyota AE86 Sprinter Trueno' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Toyota AE86 Sprinter Trueno' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Toyota AE86 Sprinter Trueno', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '198/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK34', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d0/1987ToyotaTrueno.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 199/250: Nissan Skyline GT-R (BNR34)
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline GT-R (BNR34)' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW J-Imports' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW J-Imports' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Nissan Skyline GT-R (BNR34)' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline GT-R (BNR34)', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '199/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK35', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0f/1999NissanSkylineR34.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 200/250: Punk Rod
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Punk Rod' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Team Wheels' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Team Wheels' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Punk Rod' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Punk Rod', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '200/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK36', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7a/HWRTRod.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 201/250: 1970 Pontiac Firebird
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1970 Pontiac Firebird' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pontiac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Team Wheels' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Team Wheels' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '1970 Pontiac Firebird' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1970 Pontiac Firebird', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '201/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK37', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/6/6e/HWRTFirebird.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 202/250: Street Shaker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Street Shaker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Trophy Case' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Trophy Case' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Street Shaker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Street Shaker', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '202/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK38', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/16/2026Hammerhead.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 203/250: Street Shrieker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Street Shrieker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Street Shrieker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Street Shrieker', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '203/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK39', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2f/StreetShrieker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 204/250: Mod Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mod Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mod Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mod Mill', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '204/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK40', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/f/fb/CoolMill.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 205/250: Jaguar XJC V12 Coupe
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Jaguar XJC V12 Coupe' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Jaguar' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Euro' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Euro' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Jaguar XJC V12 Coupe' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Jaguar XJC V12 Coupe', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '205/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK22', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/17/1976JaguarXJC.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 206/250: Bully Goat
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Bully Goat' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Bully Goat' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Bully Goat', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '206/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK41', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/cc/BullyGTO.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 207/250: '18 Camaro SS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''18 Camaro SS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''18 Camaro SS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''18 Camaro SS', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '207/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK42', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/df/2018Camaro.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 208/250: Porsche 911 Carrera RS 2.7
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 911 Carrera RS 2.7' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Porsche 911 Carrera RS 2.7' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 911 Carrera RS 2.7', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '208/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK43', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1b/1973PorscheRS2.7.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 209/250: Mini JCW Electric
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mini JCW Electric' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Then and Now' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Then and Now' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mini JCW Electric' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mini JCW Electric', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '209/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH62', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0d/MiniJCWElectric.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 210/250: '19 Mercedes-Benz A-Class
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''19 Mercedes-Benz A-Class' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Mercedes-Benz' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''19 Mercedes-Benz A-Class' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''19 Mercedes-Benz A-Class', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '210/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK44', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/91/IWCMercedesAClass.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 211/250: 1972 Datsun Sunny Coupe
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1972 Datsun Sunny Coupe' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Compact Kings' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Compact Kings' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '1972 Datsun Sunny Coupe' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1972 Datsun Sunny Coupe', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '211/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH66', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/5b/DatsunSunnyCoupe.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 212/250: Hyper Rocker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Hyper Rocker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Hyper Rocker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Hyper Rocker', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '212/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK45', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9b/HyperRocker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 213/250: '21 Ford Bronco
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''21 Ford Bronco' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''21 Ford Bronco' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''21 Ford Bronco', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '213/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK46', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/96/2021FordBroncoBigBend.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 214/250: '68 Corvette - Gas Monkey Garage
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''68 Corvette - Gas Monkey Garage' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''68 Corvette - Gas Monkey Garage' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''68 Corvette - Gas Monkey Garage', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '214/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK47', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/5/53/GMGCorvetteC3.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 215/250: Lil' Mad
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Lil'' Mad' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Lil'' Mad' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Lil'' Mad', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '215/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH65', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/7/7c/Lil%27Mad.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 216/250: HW Test Ride
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'HW Test Ride' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Trophy Case' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Trophy Case' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'HW Test Ride' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'HW Test Ride', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '216/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH68', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/e0/HWTestRide.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 217/250: Mad Manga
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mad Manga' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mad Manga' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mad Manga', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '217/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM10', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/1d/MadManganese.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 218/250: Alfa Romeo Giulia TI Super
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Alfa Romeo Giulia TI Super' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Alfa Romeo' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Alfa Romeo Giulia TI Super' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Alfa Romeo Giulia TI Super', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '218/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK48', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/2b/1963AlfaGiulia.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 219/250: Project Twin Mill
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Project Twin Mill' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Project Twin Mill' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Project Twin Mill', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '219/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH67', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/cf/ProjectTwinMill.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 220/250: Custom '62 Chevy Pickup
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom ''62 Chevy Pickup' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Custom ''62 Chevy Pickup' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom ''62 Chevy Pickup', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '220/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK49', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/df/FiTechPickup.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 221/250: '96 Dodge Viper GTS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''96 Dodge Viper GTS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''96 Dodge Viper GTS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''96 Dodge Viper GTS', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '221/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK50', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a5/MuscleViper.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 222/250: '94 Toyota Supra
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''94 Toyota Supra' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Toyota' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Tooned' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Tooned' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''94 Toyota Supra' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''94 Toyota Supra', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '222/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK51', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/1/13/%27Tooned1994Supra.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 223/250: 2019 Audi TT Safari
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '2019 Audi TT Safari' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Audi' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '2019 Audi TT Safari' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '2019 Audi TT Safari', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '223/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH69', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/83/AudiTTSafari.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 224/250: 1970 Custom Plymouth Roadrunner
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1970 Custom Plymouth Roadrunner' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Plymouth' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time New in Mainline' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time New in Mainline' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '1970 Custom Plymouth Roadrunner' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1970 Custom Plymouth Roadrunner', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '224/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK52', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c3/CustomRoadrunner.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 225/250: Nissan Maxima Drift Car
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Maxima Drift Car' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Wagons' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Wagons' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Nissan Maxima Drift Car' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Maxima Drift Car', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '225/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK53', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c0/K%26NMaxima.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 226/250: Salt Streaker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Salt Streaker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Team Wheels' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Team Wheels' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Salt Streaker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Salt Streaker', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '226/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH71', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/06/SaltStreaker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 227/250: '71 Lamborghini Miura SV
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''71 Lamborghini Miura SV' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Lamborghini' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''71 Lamborghini Miura SV' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''71 Lamborghini Miura SV', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '227/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK54', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/8/84/1971LamborghiniMiura.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 228/250: '66 Buick Riviera
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''66 Buick Riviera' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''66 Buick Riviera' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''66 Buick Riviera', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '228/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK55', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/9/9b/1966BuickRiviera.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 229/250: Ford Model A Custom '31
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ford Model A Custom ''31' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ford Model A Custom ''31' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ford Model A Custom ''31', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '229/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM11', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b5/Image_Not_Available.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 230/250: Uncertain-T
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Uncertain-T' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Rod Squad' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Rod Squad' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Uncertain-T' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Uncertain-T', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '230/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH70', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/0a/UncertainT.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 231/250: '68 Mercury Cougar
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''68 Mercury Cougar' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''68 Mercury Cougar' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''68 Mercury Cougar', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '231/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK56', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/0/05/1968CougarCustom.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 232/250: Slide-Burn
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Slide-Burn' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Slide-Burn' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Slide-Burn', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '232/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK57', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/aa/MuscleBurn.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 233/250: Armored Batmobile
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Armored Batmobile' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'DC Comics' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Batman' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Batman' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Armored Batmobile' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Armored Batmobile', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '233/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH72', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/a/a4/ArmoredBatmobile.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 234/250: '23 Ram 1500
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''23 Ram 1500' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Dodge' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''23 Ram 1500' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''23 Ram 1500', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '234/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK58', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/e/eb/Ram1500TRX.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 235/250: Party Wagon
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Party Wagon' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Party Wagon' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Party Wagon', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '235/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK59', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d5/TMNTPartyWagon.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 236/250: Mickey Mouse Car
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Mickey Mouse Car' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Mickey Mouse Car' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Mickey Mouse Car', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '236/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH74', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/da/Mickey%27sCar.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 237/250: Circle Tracker
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Circle Tracker' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW All Drivers Welcome World Mental Health Day' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW All Drivers Welcome World Mental Health Day' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Circle Tracker' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Circle Tracker', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '237/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK60', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/c/c8/WMHDTracker.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 238/250: Fast Fish
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Fast Fish' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Team Wheels' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Team Wheels' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Fast Fish' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Fast Fish', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '238/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM12', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/4/47/HWRTFish.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 239/250: Go-Realla-Fast
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Go-Realla-Fast' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Trophy Case' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Trophy Case' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Go-Realla-Fast' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Go-Realla-Fast', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '239/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH75', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/d/d1/Go-Realla-Fast.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 240/250: Surf 'N Turf
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Surf ''N Turf' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Hot Wheels Let''s Race' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Hot Wheels Let''s Race' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Surf ''N Turf' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Surf ''N Turf', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '240/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK61', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/3e/RaceSurf.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 241/250: 1963 Ford Galaxie
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '1963 Ford Galaxie' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Ford' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '1963 Ford Galaxie' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '1963 Ford Galaxie', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '241/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH73', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/3/39/1963FordGalaxie.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 242/250: '96 Chevrolet Impala SS
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''96 Chevrolet Impala SS' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Chevrolet' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''96 Chevrolet Impala SS' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''96 Chevrolet Impala SS', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '242/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK62', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/2/28/1996ImpalaSS.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 243/250: Aston Martin DB5 Safari Edition
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Aston Martin DB5 Safari Edition' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Aston Martin' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Dirt' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Dirt' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Aston Martin DB5 Safari Edition' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Aston Martin DB5 Safari Edition', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '243/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH76', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b5/Image_Not_Available.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 244/250: Nissan Skyline HT 2000GT-X
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Nissan Skyline HT 2000GT-X' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Nissan' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Screen Time' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Screen Time' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Nissan Skyline HT 2000GT-X' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Nissan Skyline HT 2000GT-X', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '244/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM13', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b5/Image_Not_Available.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 245/250: '70 Plymouth AAR Cuda
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''70 Plymouth AAR Cuda' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Plymouth' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''70 Plymouth AAR Cuda' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''70 Plymouth AAR Cuda', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '245/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK63', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b5/Image_Not_Available.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 246/250: Ridge Crest GT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Ridge Crest GT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'HW Torque' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'HW Torque' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Ridge Crest GT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Ridge Crest GT', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '246/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH77', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b5/Image_Not_Available.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 247/250: Gazella GT
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Gazella GT' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Trophy Case' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Trophy Case' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Gazella GT' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Gazella GT', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '247/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJM14', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b5/Image_Not_Available.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 248/250: Custom Vanster
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Custom Vanster' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Hot Wheels' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Trophy Case' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Trophy Case' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Custom Vanster' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Custom Vanster', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '248/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH79', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b5/Image_Not_Available.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 249/250: '67 Pontiac Firebird 400
    SELECT id INTO v_casting_id FROM public.castings WHERE name = '''67 Pontiac Firebird 400' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Pontiac' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = '''67 Pontiac Firebird 400' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, '''67 Pontiac Firebird 400', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '249/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJK64', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b5/Image_Not_Available.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

    -- Modelo 2026 250/250: Porsche 908-3
    SELECT id INTO v_casting_id FROM public.castings WHERE name = 'Porsche 908-3' LIMIT 1;
    SELECT id INTO v_mfg_id FROM public.manufacturers WHERE name = 'Porsche' LIMIT 1;
    SELECT id INTO v_series_id FROM public.series WHERE name = 'Cool Classics' AND year = 2026 LIMIT 1;
    SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Cool Classics' LIMIT 1;

    SELECT id INTO v_car_id FROM public.cars WHERE release_year = 2026 AND name = 'Porsche 908-3' AND casting_id = v_casting_id LIMIT 1;
    IF v_car_id IS NULL THEN
        INSERT INTO public.cars (casting_id, name, release_year, manufacturer_id, series_id, category_id, packaging_type_id, scale)
        VALUES (v_casting_id, 'Porsche 908-3', 2026, v_mfg_id, v_series_id, v_cat_id, v_pkg_id, '1:64')
        RETURNING id INTO v_car_id;
    END IF;

    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Collector Number', '250/250', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source)
    VALUES (v_car_id, 'Toy Number', 'JJH78', 'Mattel Mainline 2026')
    ON CONFLICT DO NOTHING;
    INSERT INTO public.car_images (car_id, image_url, is_primary)
    VALUES (v_car_id, 'https://static.wikia.nocookie.net/hotwheels/images/b/b5/Image_Not_Available.jpg/revision/latest', true)
    ON CONFLICT DO NOTHING;

END $$;