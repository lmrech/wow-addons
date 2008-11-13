-- Default Alliance data set for FlightMap
--
-- Some default flight times thanks to Krwaz, author of FlightPath.
-- Some default flight times provided by Thorarin
-- 
-- This file is loaded after the localizations

FLIGHTMAP_ALLIANCE_FLIGHTS = {
        ["1:418:209"] = {
                ["Name"] = "Cenarion Hold, Silithus",
                ["Zone"] = FLIGHTMAP_SILITHUS,
                ["Continent"] = 1,
                ["Location"] = {
                        ["Taxi"]      = { ["x"] = 0.418980, ["y"] = 0.209867 },
                        ["Continent"] = { ["x"] = 0.442699, ["y"] = 0.797194 },
                        ["Zone"]      = { ["x"] = 0.505879, ["y"] = 0.344175 },
                },
                ["Flights"] = {
                        ["1:604:190"] = 191.037,        -- Gadgetzan, anaris
                },
                ["Costs"] = {
                        ["1:604:190"] = 730,            -- Gadgetzan, anaris
                },
        },
	["1:313:307"] = {
		["Flights"] = {
			["1:427:748"] = 471.486,
			["1:396:493"] = 227.866,
			["1:482:303"] = 170.654,
		},
		["Name"] = "Feathermoon, Feralas",
		["Zone"] = FLIGHTMAP_FERALAS,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.373022, ["y"] = 0.699925 },
			["Taxi"]      = { ["x"] = 0.313531, ["y"] = 0.307979 },
			["Zone"]      = { ["x"] = 0.302476, ["y"] = 0.432695 },
		},
		["Costs"] = {
			["1:427:748"] = 730,
			["1:396:493"] = 730,
			["1:482:303"] = 430,
		},
	},
	["1:416:842"] = {
		["Flights"] = {
			["1:427:748"] = 90.106,
		},
		["Name"] = "Rut'theran Village, Teldrassil",
		["Zone"] = FLIGHTMAP_TELDRASSIL,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.440912, ["y"] = 0.169434 },
			["Taxi"]      = { ["x"] = 0.416144, ["y"] = 0.842793 },
			["Zone"]      = { ["x"] = 0.583983, ["y"] = 0.939404 },
		},
		["Costs"] = {
			["1:427:748"] = 0,
		},
	},
	["1:482:303"] = {
		["Flights"] = {
			["1:636:330"] = 162.201,
			["1:313:307"] = 168.917,
			["1:604:190"] = 171.48,
		},
		["Name"] = "Thalanaar, Feralas",
		["Zone"] = FLIGHTMAP_FERALAS,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.484853, ["y"] = 0.704832 },
			["Taxi"]      = { ["x"] = 0.482576, ["y"] = 0.303127 },
			["Zone"]      = { ["x"] = 0.894612, ["y"] = 0.458679 },
		},
		["Costs"] = {
			["1:636:330"] = 730,
			["1:313:307"] = 630,
			["1:604:190"] = 730,
		},
	},
	["2:570:676"] = {
		["Flights"] = {
			["2:589:484"] = 172.578,
			["2:478:700"] = 81.865,
			["2:507:511"] = 278.969,
			["2:490:559"] = 127.312,
			["2:546:746"] = 73.103,
		},
		["Name"] = "Refuge Pointe, Arathi",
		["Zone"] = FLIGHTMAP_ARATHI,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.525999, ["y"] = 0.371044 },
			["Taxi"]      = { ["x"] = 0.570359, ["y"] = 0.676216 },
			["Zone"]      = { ["x"] = 0.457901, ["y"] = 0.461332 },
		},
		["Costs"] = {
			["2:589:484"] = 110,
			["2:478:700"] = 330,
			["2:507:511"] = 530,
			["2:490:559"] = 330,
			["2:546:746"] = 730,
		},
	},
	["1:610:599"] = {
		["Flights"] = {
			["1:427:748"] = 306.578,
			["1:530:742"] = 286.023,
		},
		["Name"] = "Talrendis Point, Azshara",
		["Zone"] = FLIGHTMAP_AZSHARA,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.56926, ["y"] = 0.410965 },
			["Taxi"]      = { ["x"] = 0.610477, ["y"] = 0.599073 },
			["Zone"]      = { ["x"] = 0.119307, ["y"] = 0.776057 },
		},
		["Costs"] = {
			["1:427:748"] = 730,
			["1:530:742"] = 730,
		},
	},
	["1:552:794"] = {
		["Flights"] = {
			["1:427:748"] = 146.66,
			["1:645:767"] = 133.588,
		},
		["Name"] = "Moonglade",
		["Zone"] = FLIGHTMAP_MOONGLADE,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.531431, ["y"] = 0.217861 },
			["Taxi"]      = { ["x"] = 0.552823, ["y"] = 0.793992 },
			["Zone"]      = { ["x"] = 0.480302, ["y"] = 0.673299 },
		},
		["Costs"] = {
			["1:427:748"] = 830,
			["1:645:767"] = 1020,
		},
	},
	["1:390:597"] = {
		["Flights"] = {
			["1:427:748"] = 181.969,
		},
		["Name"] = "Stonetalon Peak, Stonetalon Mountains",
		["Zone"] = FLIGHTMAP_STONETALON,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.423968, ["y"] = 0.412391 },
			["Taxi"]      = { ["x"] = 0.390646, ["y"] = 0.597828 },
			["Zone"]      = { ["x"] = 0.364744, ["y"] = 0.0718715 },
		},
		["Costs"] = {
			["1:427:748"] = 330,
		},
	},
	["2:478:700"] = {
		["Flights"] = {
			["2:546:746"] = 72.843,
			["2:520:775"] = 88.07,
			["2:507:511"] = 207,
			["2:490:559"] = 107.183,
			["2:570:676"] = 76.14,
		},
		["Name"] = "Southshore, Hillsbrad",
		["Zone"] = FLIGHTMAP_HILLSBRAD,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.469121, ["y"] = 0.348598 },
			["Taxi"]      = { ["x"] = 0.47862, ["y"] = 0.700487 },
			["Zone"]      = { ["x"] = 0.493652, ["y"] = 0.522103 },
		},
		["Costs"] = {
			["2:546:746"] = 730,
			["2:520:775"] = 830,
			["2:507:511"] = 330,
			["2:490:559"] = 330,
			["2:570:676"] = 530,
		},
	},
	["2:557:300"] = {
		["Flights"] = {
			["2:512:250"] = 61.859,
			["2:407:245"] = 135.389,
			["2:432:327"] = 115,
		},
		["Name"] = "Lakeshire, Redridge",
		["Zone"] = FLIGHTMAP_REDRIDGE,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.518128, ["y"] = 0.720186 },
			["Taxi"]      = { ["x"] = 0.557343, ["y"] = 0.300541 },
			["Zone"]      = { ["x"] = 0.307354, ["y"] = 0.593072 },
		},
		["Costs"] = {
			["2:512:250"] = 330,
			["2:407:245"] = 110,
			["2:432:327"] = 210,
		},
	},
	["1:636:330"] = {
		["Flights"] = {
			["1:396:493"] = 334.861,
			["1:482:303"] = 162.129,
			["1:427:748"] = 718.213,
			["1:604:190"] = 158.968,
		},
		["Name"] = "Theramore, Dustwallow Marsh",
		["Zone"] = FLIGHTMAP_DUSTWALLOW,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.586515, ["y"] = 0.677733 },
			["Taxi"]      = { ["x"] = 0.636261, ["y"] = 0.330511 },
			["Zone"]      = { ["x"] = 0.674672, ["y"] = 0.512493 },
		},
		["Costs"] = {
			["1:427:748"] = 630,
			["1:482:303"] = 430,
			["1:396:493"] = 530,
			["1:604:190"] = 730,
		},
	},
	["2:699:837"] = {
		["Flights"] = {
			["2:546:746"] = 175.257,
		},
		["Name"] = "Light's Hope Chapel, Eastern Plaguelands",
		["Zone"] = FLIGHTMAP_EASTERNPLAGUE,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.60636, ["y"] = 0.221464 },
			["Taxi"]      = { ["x"] = 0.699995, ["y"] = 0.837321 },
			["Zone"]      = { ["x"] = 0.815946, ["y"] = 0.592893 },
		},
		["Costs"] = {
			["2:546:746"] = 730,
		},
	},
	["2:507:511"] = {
		["Flights"] = {
			["2:589:484"] = 103.018,
			["2:432:327"] = 215.711,
			["2:508:432"] = 88.681,
			["2:490:559"] = 130.653,
			["2:570:676"] = 258.269,
			["2:546:746"] = 307.166,
			["2:478:700"] = 266,
		},
		["Name"] = "Ironforge, Dun Morogh",
		["Zone"] = FLIGHTMAP_IRONFORGE,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.487331, ["y"] = 0.523615 },
			["Taxi"]      = { ["x"] = 0.50798, ["y"] = 0.511915 },
			["Zone"]      = { ["x"] = 0.557052, ["y"] = 0.476917 },
		},
		["Costs"] = {
			["2:589:484"] = 110,
			["2:478:700"] = 330,
			["2:508:432"] = 830,
			["2:490:559"] = 330,
			["2:570:676"] = 530,
			["2:432:327"] = 50,
			["2:546:746"] = 730,
		},
	},
	["1:604:190"] = {
		["Flights"] = {
			["1:636:330"] = 158.465,
			["1:482:303"] = 174.262,
                        ["1:418:209"] = 199.821,
		},
		["Name"] = "Gadgetzan, Tanaris",
		["Zone"] = FLIGHTMAP_TANARIS,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.565253, ["y"] = 0.816195 },
			["Taxi"]      = { ["x"] = 0.604133, ["y"] = 0.19088 },
			["Zone"]      = { ["x"] = 0.509542, ["y"] = 0.293254 },
		},
		["Costs"] = {
			["1:636:330"] = 630,
			["1:482:303"] = 430,
                        ["1:418:209"] = 1070,
		},
	},
	["2:580:349"] = {
		["Flights"] = {
			["2:612:223"] = 250.819,
			["2:508:432"] = 104.499,
		},
		["Name"] = "Morgan's Vigil, Burning Steppes",
		["Zone"] = FLIGHTMAP_BURNINGSTEPPE,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.532341, ["y"] = 0.674627 },
			["Taxi"]      = { ["x"] = 0.580601, ["y"] = 0.349378 },
			["Zone"]      = { ["x"] = 0.843818, ["y"] = 0.683045 },
		},
		["Costs"] = {
			["2:612:223"] = 830,
			["2:508:432"] = 830,
		},
	},
	["2:589:484"] = {
		["Flights"] = {
			["2:490:559"] = 152,
			["2:570:676"] = 165.29,
			["2:507:511"] = 117.773,
		},
		["Name"] = "Thelsamar, Loch Modan",
		["Zone"] = FLIGHTMAP_LOCHMODAN,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.537786, ["y"] = 0.549228 },
			["Taxi"]      = { ["x"] = 0.589393, ["y"] = 0.484383 },
			["Zone"]      = { ["x"] = 0.33943, ["y"] = 0.507947 },
		},
		["Costs"] = {
			["2:490:559"] = 330,
			["2:570:676"] = 530,
			["2:507:511"] = 110,
		},
	},
	["2:432:327"] = {
		["Flights"] = {
			["2:407:245"] = 77.299,
			["2:507:511"] = 262.656,
			["2:433:69"] = 245,
			["2:612:223"] = 175.057,
			["2:512:250"] = 117.236,
			["2:557:300"] = 112.726,
		},
		["Name"] = "Stormwind, Elwynn",
		["Zone"] = FLIGHTMAP_STORMWIND,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.440659, ["y"] = 0.694733 },
			["Taxi"]      = { ["x"] = 0.432504, ["y"] = 0.327542 },
			["Zone"]      = { ["x"] = 0.663639, ["y"] = 0.622032 },
		},
		["Costs"] = {
			["2:407:245"] = 110,
			["2:557:300"] = 210,
			["2:433:69"] = 630,
			["2:612:223"] = 830,
			["2:512:250"] = 330,
			["2:507:511"] = 50,
		},
	},
	["1:462:603"] = {
		["Flights"] = {
			["1:427:748"] = 151.597,
		},
		["Name"] = "Astranaar, Ashenvale",
		["Zone"] = FLIGHTMAP_ASHENVALE,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.471421, ["y"] = 0.406474 },
			["Taxi"]      = { ["x"] = 0.462582, ["y"] = 0.603835 },
			["Zone"]      = { ["x"] = 0.343628, ["y"] = 0.480031 },
		},
		["Costs"] = {
			["1:427:748"] = 330,
		},
	},
	["2:490:559"] = {
		["Flights"] = {
			["2:589:484"] = 164.479,
			["2:478:700"] = 130.487,
			["2:507:511"] = 90.02,
			["2:570:676"] = 114.526,
		},
		["Name"] = "Menethil Harbor, Wetlands",
		["Zone"] = FLIGHTMAP_WETLANDS,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.476799, ["y"] = 0.479782 },
			["Taxi"]      = { ["x"] = 0.490907, ["y"] = 0.559148 },
			["Zone"]      = { ["x"] = 0.0952036, ["y"] = 0.596587 },
		},
		["Costs"] = {
			["2:589:484"] = 110,
			["2:478:700"] = 330,
			["2:507:511"] = 330,
			["2:570:676"] = 530,
		},
	},
	["1:396:493"] = {
		["Flights"] = {
			["1:636:330"] = 310.32,
			["1:427:748"] = 284.542,
			["1:313:307"] = 230.16,
		},
		["Name"] = "Nijel's Point, Desolace",
		["Zone"] = FLIGHTMAP_DESOLACE,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.427741, ["y"] = 0.516062 },
			["Taxi"]      = { ["x"] = 0.396228, ["y"] = 0.493395 },
			["Zone"]      = { ["x"] = 0.646713, ["y"] = 0.104354 },
		},
		["Costs"] = {
			["1:636:330"] = 530,
			["1:427:748"] = 530,
			["1:313:307"] = 730,
		},
	},
	["2:512:250"] = {
		["Flights"] = {
			["2:407:245"] = 97.66,
			["2:432:327"] = 90.131,
			["2:557:300"] = 60.827,
			["2:433:69"] = 173.46,
			["2:612:223"] = 98.483,
		},
		["Name"] = "Darkshire, Duskwood",
		["Zone"] = FLIGHTMAP_DUSKWOOD,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.490338, ["y"] = 0.766227 },
			["Taxi"]      = { ["x"] = 0.512853, ["y"] = 0.250701 },
			["Zone"]      = { ["x"] = 0.775258, ["y"] = 0.443037 },
		},
		["Costs"] = {
			["2:407:245"] = 110,
			["2:432:327"] = 330,
			["2:557:300"] = 210,
			["2:433:69"] = 630,
			["2:612:223"] = 830,
		},
	},
	["1:645:767"] = {
		["Flights"] = {
			["1:552:794"] = 133.276,
			["1:530:742"] = 124.126,
		},
		["Name"] = "Everlook, Winterspring",
		["Zone"] = FLIGHTMAP_WINTERSPRING,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.59264, ["y"] = 0.244593 },
			["Taxi"]      = { ["x"] = 0.64554, ["y"] = 0.767019 },
			["Zone"]      = { ["x"] = 0.623348, ["y"] = 0.366358 },
		},
		["Costs"] = {
			["1:552:794"] = 830,
			["1:530:742"] = 730,
		},
	},
	["2:407:245"] = {
		["Flights"] = {
			["2:432:327"] = 82.72,
			["2:557:300"] = 131.25,
			["2:433:69"] = 187.855,
			["2:512:250"] = 98.096,
		},
		["Name"] = "Sentinel Hill, Westfall",
		["Zone"] = FLIGHTMAP_WESTFALL,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.425095, ["y"] = 0.771117 },
			["Taxi"]      = { ["x"] = 0.40741, ["y"] = 0.245498 },
			["Zone"]      = { ["x"] = 0.56571, ["y"] = 0.526667 },
		},
		["Costs"] = {
			["2:432:327"] = 110,
			["2:557:300"] = 210,
			["2:433:69"] = 630,
			["2:512:250"] = 330,
		},
	},
	["2:546:746"] = {
		["Flights"] = {
			["2:478:700"] = 68.312,
			["2:507:511"] = 257.422,
			["2:699:837"] = 174.485,
			["2:570:676"] = 74.786,
		},
		["Name"] = "Aerie Peak, The Hinterlands",
		["Zone"] = FLIGHTMAP_HINTERLANDS,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.511443, ["y"] = 0.306089 },
			["Taxi"]      = { ["x"] = 0.546853, ["y"] = 0.746146 },
			["Zone"]      = { ["x"] = 0.111106, ["y"] = 0.46088 },
		},
		["Costs"] = {
			["2:478:700"] = 330,
			["2:507:511"] = 730,
			["2:570:676"] = 530,
			["2:699:837"] = 1020,
		},
	},
	["2:520:775"] = {
		["Flights"] = {
			["2:478:700"] = 87.715,
		},
		["Name"] = "Chillwind Camp, Western Plaguelands",
		["Zone"] = FLIGHTMAP_WESTERNPLAGUE,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.495184, ["y"] = 0.27856 },
			["Taxi"]      = { ["x"] = 0.520581, ["y"] = 0.775855 },
			["Zone"]      = { ["x"] = 0.429553, ["y"] = 0.850087 },
		},
		["Costs"] = {
			["2:478:700"] = 330,
		},
	},
	["1:427:748"] = {
		["Flights"] = {
			["1:313:307"] = 476.326,
			["1:416:842"] = 85.418,
			["1:610:599"] = 304.109,
			["1:396:493"] = 286.348,
			["1:462:603"] = 180.638,
			["1:390:597"] = 186.054,
			["1:636:330"] = 692.73,
			["1:530:742"] = 188.888,
			["1:552:794"] = 149.985,
		},
		["Name"] = "Auberdine, Darkshore",
		["Zone"] = FLIGHTMAP_DARKSHORE,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.448539, ["y"] = 0.263223 },
			["Taxi"]      = { ["x"] = 0.427786, ["y"] = 0.748208 },
			["Zone"]      = { ["x"] = 0.363542, ["y"] = 0.455986 },
		},
		["Costs"] = {
			["1:313:307"] = 730,
			["1:416:842"] = 0,
			["1:610:599"] = 730,
			["1:396:493"] = 530,
			["1:462:603"] = 330,
			["1:390:597"] = 330,
			["1:636:330"] = 630,
			["1:552:794"] = 830,
			["1:530:742"] = 730,
		},
	},
	["2:433:69"] = {
		["Flights"] = {
			["2:512:250"] = 176.653,
			["2:407:245"] = 183.07,
			["2:432:327"] = 222.092,
		},
		["Name"] = "Booty Bay, Stranglethorn",
		["Zone"] = FLIGHTMAP_STRANGLETHORN,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.441329, ["y"] = 0.935091 },
			["Taxi"]      = { ["x"] = 0.433677, ["y"] = 0.0691357 },
			["Zone"]      = { ["x"] = 0.275115, ["y"] = 0.777602 },
		},
		["Costs"] = {
			["2:512:250"] = 330,
			["2:407:245"] = 530,
			["2:432:327"] = 630,
		},
	},
	["1:530:742"] = {
		["Flights"] = {
			["1:427:748"] = 188.315,
			["1:610:599"] = 285.859,
			["1:645:767"] = 124.187,
		},
		["Name"] = "Talonbranch Glade, Felwood",
		["Zone"] = FLIGHTMAP_FELWOOD,
		["Continent"] = 1,
		["Location"] = {
			["Continent"] = { ["x"] = 0.516755, ["y"] = 0.268729 },
			["Taxi"]      = { ["x"] = 0.530809, ["y"] = 0.742692 },
			["Zone"]      = { ["x"] = 0.624619, ["y"] = 0.241621 },
		},
		["Costs"] = {
			["1:427:748"] = 730,
			["1:610:599"] = 730,
			["1:645:767"] = 1020,
		},
	},
	["2:508:432"] = {
		["Flights"] = {
			["2:580:349"] = 103.571,
			["2:507:511"] = 91.911,
		},
		["Name"] = "Thorium Point, Searing Gorge",
		["Zone"] = FLIGHTMAP_SEARINGGORGE,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.487759, ["y"] = 0.597613 },
			["Taxi"]      = { ["x"] = 0.508569, ["y"] = 0.43251 },
			["Zone"]      = { ["x"] = 0.379221, ["y"] = 0.307452 },
		},
		["Costs"] = {
			["2:580:349"] = 830,
			["2:507:511"] = 830,
		},
	},
	["2:612:223"] = {
		["Flights"] = {
			["2:512:250"] = 93.468,
			["2:432:327"] = 182.299,
			["2:580:349"] = 237.981,
		},
		["Name"] = "Nethergarde Keep, Blasted Lands",
		["Zone"] = FLIGHTMAP_BLASTEDLANDS,
		["Continent"] = 2,
		["Location"] = {
			["Continent"] = { ["x"] = 0.552203, ["y"] = 0.791679 },
			["Taxi"]      = { ["x"] = 0.612595, ["y"] = 0.223322 },
			["Zone"]      = { ["x"] = 0.655472, ["y"] = 0.243918 },
		},
		["Costs"] = {
			["2:512:250"] = 330,
			["2:432:327"] = 830,
			["2:580:349"] = 830,
		},
	},
};
