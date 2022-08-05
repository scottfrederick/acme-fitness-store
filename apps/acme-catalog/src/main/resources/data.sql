insert into catalog (id, description, image_url1, image_url2, image_url3, name, price, short_description, tags)
values ('533445d-530e-4a76-9398-5d16713b827b',
        'Magic Yoga Mat!',
        '/static/images/yogamat_square.jpg',
        '/static/images/yogamat_thumb2.jpg',
        '/static/images/yogamat_thumb3.jpg',
        'Yoga Mat',
        62.50,
        'Our Yoga Mat is magic. You will twist into a human pretzel with the greatest of ease. Never done Yoga before? This mat will turn you into an instant professional with barely any work. It''s the American way! Namaste!',
        'mat')
on conflict do nothing;
insert into catalog (id, description, image_url1, image_url2, image_url3, name, price, short_description, tags)
values ('0b3a1e5a-e520-4f1e-bdf4-5f721f728bfd',
        'The last Water Bottle you will ever buy!',
        '/static/images/bottle_square.jpg',
        '/static/images/bottle_thumb2.jpg',
        '/static/images/bottle_thumb3.jpg',
        'Water Bottle',
        34.99,
        'Our Water Bottle only has to be filled once! That''s right. ONCE. Unlimited water, for the rest of your life. Doesn''t that $34.99 seem a lot more reasonable now? Stop buying all those other water bottles that you have to keep refilling like a sucker. Get the ACME bottle today!',
        'bottle')
on conflict do nothing;
insert into catalog (id, description, image_url1, image_url2, image_url3, name, price, short_description, tags)
values ('b274f41d-83dd-4fa1-90d9-2b289e06b1bf',
        'Get Light on our Fit Bike!',
        '/static/images/bicycle_square.jpg',
        '/static/images/bicycle_thumb2.jpg',
        '/static/images/bicycle_thumb3.jpg',
        'Fit Bike',
        499.99,
        'Ride like the wind on your very own ACME Fit Bike. Have you ever wanted to travel as fast as a MotoGP racer on a bicycle with tiny tires?! Me too! Get the Fit Bike, and you''ll vroom your way into fitness in 30 seconds flat!',
        'bicycle')
on conflict do nothing;
insert into catalog (id, description, image_url1, image_url2, image_url3, name, price, short_description, tags)
values ('414aaf31-dfbf-4c95-94d5-64fe362e2017',
        'World''s Roundest Basketball!',
        '/static/images/basketball_square.jpg',
        '/static/images/basketball_thumb2.jpg',
        '/static/images/basketball_thumb3.jpg',
        'Basketball',
        110.75,
        'That''s right. You heard me correctly. The worlds ROUNDEST basketball. Are you tired of your current basketball simply not being round enough. Then it''s time to step up to the ACME Basketball. Get your round on!',
        'basketball')
on conflict do nothing;
insert into catalog (id, description, image_url1, image_url2, image_url3, name, price, short_description, tags)
values ('3807bbe3-0f35-4d6a-a581-1d61814dd63f',
        'The watch that makes you smarter!',
        '/static/images/smartwatch_square.jpg',
        '/static/images/smartwatch_thumb2.jpg',
        '/static/images/smartwatch_thumb3.jpg',
        'Smart Watch',
        399.58,
        'Do you have trouble remembering things? Can you not remember what day it is? Do you need a robot with a cute women''s voice to tell you when to stand up and walk around? Then boy do we have the watch for you! Get the ACME Smart Watch, and never have to remember anything ever again!',
        'watch')
on conflict do nothing;
insert into catalog (id, description, image_url1, image_url2, image_url3, name, price, short_description, tags)
values ('4e5869a0-3d96-4509-a7a2-ba671469d98b',
        'Because who doesn''t need red pants??',
        '/static/images/redpants_square.jpg',
        '/static/images/redpants_thumb2.jpg',
        '/static/images/redpants_thumb3.jpg',
        'Red Pants',
        99.00,
        'Have you found yourself walking around tech conferences in the same old jeans and vendor t-shirt? Do you need to up your pants game? ACME Red Pants are 100% GUARANTEED to take you to a whole new level. Women will want to meet you. Men will want to be you. You are... Fancy Pants. What are you waiting for??',
        'clothing')
on conflict do nothing;
insert into catalog (id, description, image_url1, image_url2, image_url3, name, price, short_description, tags)
values ('6f6efb9e-9b2b-4480-ae80-603443d81339',
        'Mama says they was magic shoes!',
        '/static/images/shoes_square.jpg',
        '/static/images/shoes_thumb2.jpg',
        '/static/images/shoes_thumb3.jpg',
        'Running Shoes',
        120.00,
        'And she was right! Are you slow? Out of shape? But still ready to take on Usain Bolt in the 100? Then strap up your ACME Running Shoes and Run Forest, Run! These shoes will make you run the 100 in 2.5 flat!',
        'running')
on conflict do nothing;
insert into catalog (id, description, image_url1, image_url2, image_url3, name, price, short_description, tags)
values ('408fa3e1-0455-4f6e-82f5-54e0bf97e607',
        'Get ripped without breaking a sweat!',
        '/static/images/weights_square.jpg',
        '/static/images/weights_thumb2.jpg',
        '/static/images/weights_thumb3.jpg',
        'Weights',
        49.99,
        'Are you ready to get Pumped Up with Hanz and Franz? Or get swole like Arnold? It''s time to hit the Add to Cart button on the ACME Weights. Just 45 seconds a day, 3 days a week, and you''ll be showing those Muscle Beach clowns how it''s done in no time!',
        'weight')
on conflict do nothing;

