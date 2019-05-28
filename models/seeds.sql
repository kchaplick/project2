INSERT INTO users (name, zipcode)
VALUES ("Alec", 19146),
        ("Ben Franklin", 19103),
        ("Will Smith", 19119);

INSERT INTO surveys (userId, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12)
VALUES (1, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3),
        (2, 1, 2, 3, 1, 2, 2, 2, 2, 3, 1, 2, 3),
        (3, 1, 2, 3, 1, 2, 2, 2, 2, 3, 1, 2, 3);  

INSERT INTO breed_matches (user_id, survey_id)
VALUES ( 1, 1),
        (1, 2),
        (1, 3), 
        (2, 4),
        (2, 5);       

INSERT INTO questions (question)
VALUES ("What type of home do you live in?"),
       ("What type of environment do you live in?"),
       ("Do you have small children?"),
       ("Do you currently have any animals?"),
       ("Have you owned your own dog before?"),
       ("What arrangements will you be making for your dog?"),
       ("What type of companionship are you looking for?"),
       ("How would you like to spend time with your dog?"),
       ("How active are you?"),
       ("How much training will you be providing?"),
       ("What size dog are you looking for?"),
       ("How much shedding are you willing to live with?");

INSERT INTO choices (questionId, choice, value)
VALUES ( 
(SELECT id FROM questions WHERE question = "What type of home do you live in?"),"Apartment",5),
((SELECT id FROM questions WHERE question = "What type of home do you live in?"),"Small Home",3),
((SELECT id FROM questions WHERE question = "What type of home do you live in?"),"Large Home",1),
((SELECT id FROM questions WHERE question = "Do you currently have any animals?"),"Yes",4),
((SELECT id FROM questions WHERE question = "Do you currently have any animals?"),"No",2),
((SELECT id FROM questions WHERE question = "What type of environment do you live in?"),"Urban",1),
((SELECT id FROM questions WHERE question = "What type of environment do you live in?"),"Suburb",3),
((SELECT id FROM questions WHERE question = "What type of environment do you live in?"),"Rural",5),
((SELECT id FROM questions WHERE question = "What arrangements will you be making for your dog?"),"I'm planning to leave him alone until I get home",5),
((SELECT id FROM questions WHERE question = "What arrangements will you be making for your dog?"),"I will make sure they are walked at least once during the day",3),
((SELECT id FROM questions WHERE question = "What arrangements will you be making for your dog?"),"I will be taking them to dog daycare or equivalent",1),
((SELECT id FROM questions WHERE question = "Do you have small children?"),"Yes",4),
((SELECT id FROM questions WHERE question = "Do you have small children?"),"No",2),
((SELECT id FROM questions WHERE question = "Do you have small children?"),"No, but we want to have a baby soon",4),
((SELECT id FROM questions WHERE question = "How active are you?"),"Not Very",1),
((SELECT id FROM questions WHERE question = "How active are you?"),"Moderately Active",3),
((SELECT id FROM questions WHERE question = "How active are you?"),"Very Active",5),
((SELECT id FROM questions WHERE question = "How would you like to spend time with your dog?"),"Let's binge watch everything on Netflix",1),
((SELECT id FROM questions WHERE question = "How would you like to spend time with your dog?"),"Let's go for a walk..but just not too far",3),
((SELECT id FROM questions WHERE question = "How would you like to spend time with your dog?"),"What do you mean you're tired? It's only been 5 hours",5),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"Small enough to fit in a bag",1),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"Not tiny, but still fits in my lap",3),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"Too big for my lap, but not too big for a large dog door",4),
((SELECT id FROM questions WHERE question = "What size dog are you looking for?"),"I want people to question if it's a bear",5),
((SELECT id FROM questions WHERE question = "What type of companionship are you looking for?"),"A dog that always wants to snuggle",5),
((SELECT id FROM questions WHERE question = "What type of companionship are you looking for?"),"Sometimes wants to snuggle but is also ok on their own",3),
((SELECT id FROM questions WHERE question = "What type of companionship are you looking for?"),"A very independant dog",1),
((SELECT id FROM questions WHERE question = "How much shedding are you willing to live with?"),"As little as possible",1),
((SELECT id FROM questions WHERE question = "How much shedding are you willing to live with?"),"I don't mind having to do a quick lint roll before leaving the house",3),
((SELECT id FROM questions WHERE question = "How much shedding are you willing to live with?"),"The fluffier the better!",5),
((SELECT id FROM questions WHERE question = "How much training will you be providing?"),"They could be accepted into the police academy",5),
((SELECT id FROM questions WHERE question = "How much training will you be providing?"),"The basics plus walking off the leash",3),
((SELECT id FROM questions WHERE question = "How much training will you be providing?"),"Just the basics",1),
((SELECT id FROM questions WHERE question = "Have you owned your own dog before?"),"Yes",1),
((SELECT id FROM questions WHERE question = "Have you owned your own dog before?"),"No",5),
((SELECT id FROM questions WHERE question = "Have you owned your own dog before?"),"No, but my family had one",3);      


INSERT INTO breeds (breed_name,image) VALUES
    ('affenpinscher',"https://images.dog.ceo/breeds/affenpinscher/n02110627_13014.jpg"),
    ('afghan hound',"https://images.dog.ceo/breeds/hound-afghan/n02088094_980.jpg"),
    ('akita',"https://images.dog.ceo/breeds/akita/Akita_Inu_dog.jpg"),
    ('alaskan malamute',"https://images.dog.ceo/breeds/malamute/n02110063_9360.jpg"),
    ('american bulldog',"https://vetstreet.brightspotcdn.com/dims4/default/a473f63/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fc5%2Fc9%2Fd3e1617243a0af32689019bba22c%2Famerican-bulldog-ap-04q7il-645-x-380.jpg"),
    ('american eskimo dog',"https://images.dog.ceo/breeds/eskimo/n02109961_4054.jpg"),
    ('american foxhound',"https://vetstreet-brightspot.s3.amazonaws.com/19/f231d0a41b11e087a80050568d634f/file/American-Foxhound-3-645mk062311.jpg"),
    ('american pit bull terrier',"https://images.dog.ceo/breeds/terrier-american/n02093428_2592.jpg"),
    ('american staffordshire terrier',"https://images.dog.ceo/breeds/bullterrier-staffordshire/n02093256_4263.jpg"),
    ('australian cattle dog',"https://images.unsplash.com/photo-1510525977025-0ecc4d8a49d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('australian kelpie',"https://images.dog.ceo/breeds/kelpie/n02105412_4932.jpg"),
    ('australian shepherd',"https://images.unsplash.com/photo-1549223123-f1ff26a8448e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('australian terrier',"https://images.dog.ceo/breeds/terrier-australian/n02096294_8268.jpg"),
    ('basenji',"https://images.dog.ceo/breeds/basenji/n02110806_3531.jpg"),
    ('basset hound',"https://images.dog.ceo/breeds/hound-basset/n02088238_9626.jpg"),
    ('beagle',"https://images.dog.ceo/breeds/beagle/n02088364_2143.jpg"),
    ('bearded collie',"https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwi475nux77iAhUFZN8KHR6MA-kQjRx6BAgBEAU&url=https%3A%2F%2Fwww.akc.org%2Fdog-breeds%2Fbearded-collie%2F&psig=AOvVaw0jHrdjZNdJBHbMHLn5Vjuq&ust=1559144377619327"),
    ('bernese mountain dog',"https://images.dog.ceo/breeds/mountain-bernese/n02107683_6580.jpg"),
    ('bichon frise',"https://images.unsplash.com/photo-1537123547273-e59f4f437f1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('black and tan coonhound',"https://images.dog.ceo/breeds/coonhound/n02089078_465.jpg"),
    ('black mouth cur',"https://www.dogbreedslist.info/uploads/allimg/dog-pictures/Black-Mouth-Cur-2.jpg"),
    ('bloodhound',"https://images.dog.ceo/breeds/hound-blood/n02088466_7486.jpg"),
    ('bluetick coonhound',"https://images.dog.ceo/breeds/bluetick/n02088632_70.jpg"),
    ('boerboel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/13000039/Boerboel-On-White-03.jpg"),
    ('bolognese',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/07171038/AdobeStock_71665389.jpg"),
    ('border collie',"https://images.dog.ceo/breeds/collie-border/n02106166_3395.jpg"),
    ('border terrier',"https://images.dog.ceo/breeds/terrier-border/n02093754_3634.jpg"),
    ('boston terrier',"https://images.dog.ceo/breeds/bulldog-boston/n02096585_9725.jpg"),
    ('boxer',"https://images.dog.ceo/breeds/boxer/n02108089_11687.jpg"),
    ('boykin spaniel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/04160609/American-Water-Spaniel.1-400x267.jpg"),
    ('brittany',"https://images.dog.ceo/breeds/spaniel-brittany/n02101388_10017.jpg"),
    ('brussels griffon',"https://images.unsplash.com/photo-1531719045252-d9721d0d1ba8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1647&q=80"),
    ('bull terrier',"https://images.unsplash.com/photo-1531860588597-5f93b7296082?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('bulldog',"https://images.unsplash.com/photo-1504226646080-dbdec09a1fac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"),
    ('bullmastiff',"https://images.dog.ceo/breeds/mastiff-bull/n02108422_1096.jpg"),
    ('cairn terrier',"https://images.dog.ceo/breeds/cairn/n02096177_5785.jpg"),
    ('cane corso',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/18124233/Cane-Corso.jpg"),
    ('cardigan welsh corgi',"https://images.dog.ceo/breeds/corgi-cardigan/n02113186_10431.jpg"),
    ('catahoula leopard dog',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/14120737/GettyImages-627454522.jpg"),
    ('caucasian shepherd dog',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/14131930/GettyImages-1095398138.jpg"),
    ('cavalier king charles spaniel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12234921/Cavalier-King-Charles-Spaniel-On-White-03.jpg"),
    ('chesapeake bay retriever',"https://images.dog.ceo/breeds/retriever-chesapeake/n02099849_493.jpg"),
    ('chihuahua',"https://images.dog.ceo/breeds/chihuahua/n02085620_3826.jpg"),
    ('chinese crested',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12234649/Chinese-Crested-On-White-01.jpg"),
    ('chinese shar pei',"https://images.unsplash.com/photo-1535726890525-b0557398cb32?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80"),
    ('chinook',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/31112430/Chinook-portrait-11-800x600.jpg"),
    ('chow chow',"https://images.dog.ceo/breeds/chow/n02112137_16815.jpg"),
    ('clumber spaniel',"https://images.dog.ceo/breeds/clumber/n02101556_2677.jpg"),
    ('cockapoo',"https://images.unsplash.com/photo-1534361960057-19889db9621e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80"),
    ('cocker spaniel',"https://images.dog.ceo/breeds/spaniel-cocker/n02102318_13800.jpg"),
    ('collie',"https://images.unsplash.com/photo-1524729429516-485db0307e59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80"),
    ('curly coated retriever',"https://images.dog.ceo/breeds/retriever-curly/n02099429_853.jpg"),
    ('dachshund',"https://images.dog.ceo/breeds/dachshund/foxhound-53951_640.jpg"),
    ('dalmatian',"https://images.dog.ceo/breeds/dalmatian/cooper1.jpg"),
    ('doberman pinscher',"https://images.dog.ceo/breeds/doberman/n02107142_16400.jpg"),
    ('dogo argentino',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/11141753/Dogo.06.jpg"),
    ('dogue de bordeaux',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12213013/Dogue-de-Bordeaux-on-white-07.jpg"),
    ('dutch shepherd',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12205622/Dutch-Shepherd-on-White-01.jpg"),
    ('english cocker spaniel',"https://images.dog.ceo/breeds/spaniel-cocker/n02102318_13800.jpg"),
    ('english foxhound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12233649/English-Foxhound-On-White-02.jpg"),
    ('english setter',"https://images.dog.ceo/breeds/setter-english/n02100735_7013.jpg"),
    ('english springer spaniel',"https://images.dog.ceo/breeds/springer-english/n02102040_6846.jpg"),
    ('english toy spaniel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12233503/English-Toy-Spaniel-On-White-01.jpg"),
    ('finnish lapphund',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12233323/Finnish-Lapphund-On-White-01.jpg"),
    ('finnish spitz',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12233256/Finnish-Spitz-On-White-01.jpg"),
    ('flat coated retriever',"https://images.dog.ceo/breeds/retriever-flatcoated/n02099267_721.jpg"),
    ('fox terrier',"https://images.dog.ceo/breeds/terrier-fox/n02095314_3451.jpg"),
    ('french bulldog',"https://images.dog.ceo/breeds/bulldog-french/n02108915_57.jpg"),
    ('german pinscher',"https://images.dog.ceo/breeds/doberman/n02107142_16400.jpg"),
    ('german shepherd dog',"https://images.dog.ceo/breeds/germanshepherd/n02106662_18405.jpg"),
    ('german shorthaired pointer',"https://images.dog.ceo/breeds/pointer-german/n02100236_485.jpg"),
    ('german wirehaired pointer',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12232911/German-Wirehaired-Pointer-On-White-01.jpg"),
    ('giant schnauzer',"https://images.dog.ceo/breeds/schnauzer-giant/n02097130_2091.jpg"),
    ('golden retriever',"https://images.dog.ceo/breeds/retriever-golden/n02099601_5160.jpg"),
    ('goldendoodle',"https://vetstreet.brightspotcdn.com/dims4/default/61ede8e/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fa5%2F187ce0a8b411e0a0d50050568d634f%2Ffile%2Fgoldendoodle-3-645mk070111.jpg"),
    ('great dane',"https://images.dog.ceo/breeds/dane-great/n02109047_25342.jpg"),
    ('great pyrenees',"https://images.dog.ceo/breeds/pyrenees/n02111500_2746.jpg"),
    ('greater swiss mountain dog',"https://images.dog.ceo/breeds/mountain-swiss/n02107574_261.jpg"),
    ('greyhound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12232417/Greyhound-MP.jpg"),
    ('harrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/22174432/Harrier3.jpg"),
    ('havanese',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/19160307/Two-Havanese.jpg"),
    ('ibizan hound',"https://images.dog.ceo/breeds/hound-ibizan/n02091244_822.jpg"),
    ('icelandic sheepdog',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/19173242/Icelandic-Sheepdog.jpg"),
    ('irish setter',"https://images.dog.ceo/breeds/setter-irish/n02100877_722.jpg"),
    ('irish terrier',"https://images.dog.ceo/breeds/terrier-irish/n02093991_3653.jpg"),
    ('irish wolfhound',"https://images.dog.ceo/breeds/wolfhound-irish/n02090721_2319.jpg"),
    ('italian greyhound',"https://images.dog.ceo/breeds/greyhound-italian/n02091032_1547.jpg"),
    ('jack russell terrier',"https://images.dog.ceo/breeds/terrier-russell/little1.jpg"),
    ('japanese chin',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12210836/Japanese-Chin-on-White-01.jpg.jpg"),
    ('japanese spitz',"https://cdn3-www.dogtime.com/assets/uploads/2018/06/japanese-spitz-dog-breed-pictures-header-460x260.jpg"),
    ('karelian bear dog',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12195715/Karelian-Bear-Dog-MP.jpg"),
    ('jindo',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12231728/Jindo-On-White-01.jpg"),
    ('labradoodle',"https://images.unsplash.com/photo-1537219234791-81c444843c4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80"),
    ('labrador retriever',"https://images.dog.ceo/breeds/labrador/n02099712_3503.jpg"),
    ('maltese',"https://images.dog.ceo/breeds/maltese/n02085936_4713.jpg"),
    ('maltese shih tzu',"https://images.dog.ceo/breeds/maltese/n02085936_4713.jpg"),
    ('maltipoo',"https://images.dog.ceo/breeds/maltese/n02085936_4713.jpg"),
    ('manchester terrier',"https://images.dog.ceo/breeds/pinscher-miniature/n02107312_3426.jpg"),
    ('mastiff',"https://images.dog.ceo/breeds/mastiff-bull/n02108422_1096.jpg"),
    ('miniature pinscher',"https://images.dog.ceo/breeds/pinscher-miniature/n02107312_3426.jpg"),
    ('miniature schnauzer',"https://images.dog.ceo/breeds/schnauzer-miniature/n02097047_2126.jpg"),
    ('mudi',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12194438/Mudi-On-White-02.jpg"),
    ('neapolitan mastiff',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12213114/Neopolitan-Mastiff-slide10-.jpg"),
    ('newfoundland',"https://images.dog.ceo/breeds/newfoundland/n02111277_3456.jpg"),
    ('norfolk terrier',"https://images.dog.ceo/breeds/terrier-norfolk/n02094114_2785.jpg"),
    ('norwegian elkhound',"https://images.dog.ceo/breeds/elkhound-norwegian/n02091467_3131.jpg"),
    ('norwich terrier',"https://images.dog.ceo/breeds/terrier-norwich/n02094258_52.jpg"),
    ('old english sheepdog',"https://images.dog.ceo/breeds/sheepdog-english/n02105641_12297.jpg"),
    ('papillon',"https://images.dog.ceo/breeds/papillon/n02086910_2188.jpg"),
    ('pekingese',"https://images.dog.ceo/breeds/pekinese/n02086079_11664.jpg"),
    ('pembroke welsh corgi',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/25204906/Day1_Dec13_52.jpg"),
    ('pharaoh hound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12214239/Pharaoh-Hound-On-White-03.jpg"),
    ('plott',"http://www.pethealthnetwork.com/sites/default/files/content/images/plott-hound153492033.png"),
    ('pocket beagle',"https://images.dog.ceo/breeds/beagle/n02088364_2143.jpg"),
    ('pointer',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12225725/Pointer-MP.jpg"),
    ('pomeranian',"https://images.dog.ceo/breeds/pomeranian/n02112018_3666.jpg"),
    ('pomsky',"https://cdn0.wideopenpets.com/wp-content/uploads/2018/03/PomskyFI-770x405.jpg"),
    ('poodle',"https://images.dog.ceo/breeds/poodle-standard/n02113799_923.jpg"),
    ('pug',"https://images.dog.ceo/breeds/pug/n02110958_13263.jpg"),
    ('puggle',"https://vetstreet.brightspotcdn.com/dims4/default/484e465/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F9c%2F8ef600aec511e088ab0050568d634f%2Ffile%2FPuggle-2-645km071411.jpg"),
    ('rat terrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12225148/Rat-Terrier-On-White-01.jpg"),
    ('redbone coonhound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12225124/Redbone-Coonhound-MP.jpg"),
    ('rhodesian ridgeback',"https://images.dog.ceo/breeds/ridgeback-rhodesian/n02087394_10588.jpg"),
    ('rottweiler',"https://images.dog.ceo/breeds/rottweiler/n02106550_4217.jpg"),
    ('saint bernard',"https://images.dog.ceo/breeds/stbernard/n02109525_5264.jpg"),
    ('saluki',"https://images.dog.ceo/breeds/saluki/n02091831_6427.jpg"),
    ('schipperke',"https://images.dog.ceo/breeds/schipperke/n02104365_9595.jpg"),
    ('scottish terrier',"https://images.dog.ceo/breeds/terrier-scottish/n02097298_8178.jpg"),
    ('shetland sheepdog',"https://images.dog.ceo/breeds/sheepdog-shetland/n02105855_2094.jpg"),
    ('shiba inu',"https://images.dog.ceo/breeds/shiba/shiba-8.JPG"),
    ('shih tzu',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12224319/Shih-Tzu-On-White-05.jpg"),
    ('siberian husky',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/22184327/Siberian-Husky-on-White-12-800x600-1.jpg"),
    ('silky terrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12224133/Silky-Terrier-On-White-01.jpg"),
    ('staffordshire bull terrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12223801/Staffordshire-Bull-Terrier-MP.jpg"),
    ('standard schnauzer',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2018/10/17230943/standard-schnauzer-archival-image-stdschnauzer068.jpg"),
    ('tibetan mastiff',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12223558/Tibetan-Mastiff-On-White-03.jpg"),
    ('tibetan spaniel',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12223538/Tibetan-Spaniel-On-White-01.jpg"),
    ('tibetan terrier',"https://images.dog.ceo/breeds/terrier-tibetan/n02097474_3962.jpg"),
    ('toy fox terrier',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/26212614/Toy-Fox-Terrier-Puppies.jpg"),
    ('treeing walker coonhound',"https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12223344/Treeing-Walker-Coonhound-On-White-01.jpg"),
    ('vizsla',"https://images.dog.ceo/breeds/vizsla/n02100583_7522.jpg"),
    ('weimaraner',"https://images.dog.ceo/breeds/weimaraner/n02092339_7816.jpg"),
    ('west highland white terrier',"https://images.dog.ceo/breeds/terrier-westhighland/n02098286_3290.jpg"),
    ('whippet',"https://images.dog.ceo/breeds/whippet/n02091134_10618.jpg"),
    ('yorkipoo',"https://g77v3827gg2notadhhw9pew7-wpengine.netdna-ssl.com/wp-content/uploads/2016/01/bigstock-Cute-Yorkie-Poo-1174843-1024x732.jpg"),
    ('yorkshire terrier',"https://images.dog.ceo/breeds/terrier-yorkshire/n02094433_1312.jpg")
;



INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Incredibly Kid Friendly Dogs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (1,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (2,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Incredibly Kid Friendly Dogs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (3,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (4,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (5,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (6,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (7,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (8,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (9,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (10,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (11,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (12,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (13,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Tolerates Being Alone',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (14,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (15,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (16,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (17,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (18,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (19,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (20,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (21,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (22,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (23,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (24,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (25,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (26,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (27,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (28,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (29,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (30,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (31,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (32,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (33,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (34,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (35,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (36,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (37,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (38,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (39,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (40,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (41,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (42,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (43,'Exercise Needs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (44,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Tolerates Being Alone',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Affectionate with Family',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (45,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (46,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Tolerates Being Alone',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Affectionate with Family',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Incredibly Kid Friendly Dogs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (47,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (48,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (49,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (50,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (51,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (52,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (53,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (54,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (55,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (56,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (57,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (58,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (59,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Tolerates Being Alone',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (60,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (61,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (62,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Incredibly Kid Friendly Dogs',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (63,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (64,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (65,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (66,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (67,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (68,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (69,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (70,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (71,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (72,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (73,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (74,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (75,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (76,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (77,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (78,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (79,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (80,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (81,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (82,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (83,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (84,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (85,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (86,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (87,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (88,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Affectionate with Family',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (89,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (90,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (91,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (92,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Tolerates Being Alone',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (93,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (94,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (95,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (96,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (97,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (98,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (99,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (100,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Tolerates Being Alone',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (101,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (102,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (103,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (104,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (105,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (106,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (107,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (108,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (109,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Sensitivity Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (110,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (111,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (112,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (113,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (114,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (115,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (116,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (117,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (118,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (119,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Affectionate with Family',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (120,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (121,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (122,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (123,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (124,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (125,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (126,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (127,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (128,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Amount Of Shedding',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (129,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Tolerates Being Alone',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (130,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Energy Level',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (131,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Adapts Well to Apartment Living',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (132,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Sensitivity Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Incredibly Kid Friendly Dogs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Dog Friendly',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (133,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Adapts Well to Apartment Living',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Dog Friendly',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (134,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (135,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Good For Novice Owners',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Size',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Easy To Train',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (136,'Exercise Needs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Energy Level',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (137,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (138,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (139,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Amount Of Shedding',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Easy To Train',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (140,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Easy To Train',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (141,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Adapts Well to Apartment Living',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Good For Novice Owners',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Tolerates Being Alone',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Size',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (142,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Adapts Well to Apartment Living',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Dog Friendly',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Amount Of Shedding',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Size',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Energy Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (143,'Exercise Needs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Good For Novice Owners',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Incredibly Kid Friendly Dogs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Dog Friendly',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Size',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (144,'Exercise Needs',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Good For Novice Owners',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Sensitivity Level',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Tolerates Being Alone',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Affectionate with Family',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Incredibly Kid Friendly Dogs',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Amount Of Shedding',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Easy To Train',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (145,'Exercise Needs',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Adapts Well to Apartment Living',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Good For Novice Owners',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Sensitivity Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Tolerates Being Alone',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Affectionate with Family',4);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Incredibly Kid Friendly Dogs',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Dog Friendly',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Amount Of Shedding',2);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Size',1);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Easy To Train',3);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Energy Level',5);
INSERT INTO attributes(breedId,attribute,score) VALUES (146,'Exercise Needs',4);
