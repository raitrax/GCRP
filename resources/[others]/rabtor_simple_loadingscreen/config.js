var VK = new Object(); // DO NOT CHANGE
VK.server = new Object(); // DO NOT CHANGE

VK.backgrounds = new Object(); // DO NOT CHANGE
VK.backgrounds.actual = 0; // DO NOT CHANGE
VK.backgrounds.way = true; // DO NOT CHANGE
VK.config = new Object(); // DO NOT CHANGE
VK.tips = new Object(); // DO NOT CHANGE
VK.music = new Object(); // DO NOT CHANGE
VK.info = new Object(); // DO NOT CHANGE
VK.social = new Object(); // DO NOT CHANGE
VK.players = new Object(); // DO NOT CHANGE 

//////////////////////////////// CONFIG

VK.config.loadingSessionText = "Chargement de la session..."; // Loading session text
VK.config.firstColor = [0, 0, 0]; // First color in rgb : [r, g, b]
VK.config.secondColor = [0, 0, 0]; // Second color in rgb : [r, g, b]
VK.config.thirdColor = [0, 0, 0]; // Third color in rgb : [r, g, b]

VK.backgrounds.list = [ // Backgrounds list, can be on local or distant(http://....)
    "img/1.jpg",
	"img/3.jpg",
	"img/6.jpg",
	"img/7.jpg",
	"img/8.jpg",
	"img/9.jpg",
	"img/10.jpg",
];
VK.backgrounds.duration = 3000; // Background duration (in ms) before transition (the transition lasts 1/3 of this time)

VK.tips.enable = true; //Enable tips (true : enable, false : prevent)
VK.tips.list = [ // Tips list
    "Appuyez sur \"F7\" pour accèder à votre iPhone, ainsi que \"ECHAP\" Pour le fermer !", // If you use double-quotes, make sure to put a \ before each double quotes
    "Appuyez sur \"F5\" pour accèder à votre menu personnel !",
    "Appuyez sur \"F2\" pour accèder à votre inventère !",
    "Appuyez sur \"U\" pour vérouiller ou déverouiller votre véhicule !",
	"Appuyez sur \"X\" pour attacher votre ceinture !",
    "Maintenez \"%\" pour mettre vos mains en l'air !",
	"Maintenez \"N\" pour activer votre voix !",
];

VK.music.url = "live.ogg"; // Music url, can be on local or distant (http://....) ("NONE" to desactive music)
VK.music.volume = 0.1; // Music volume (0-1)
VK.music.title = "Batman Arkham City Soundtrack - Main Theme (Track #1)"; // Music title ("NONE" to desactive)
VK.music.submitedBy = "🦇"; // Music submited by... ("NONE" to desactive)

VK.info.logo = "img/5.png"; // Logo, can be on local or distant(http://....) ("NONE" to desactive)
VK.info.text = "100% RP"; // Bottom right corner text ("NONE" to desactive) 
VK.info.website = "https://gta.top-serveurs.net/vote/gotham-city-by-digilux"; // Website url ("NONE" to desactive) 
VK.info.ip = "51.75.22.143:30120"; // Your server ip and port ("ip:port")
VK.social.discord = "discord.gg/sdKNU5W"; // Discord url ("NONE" to desactive)


VK.players.enable = true; // Enable the players count of the server (true : enable, false : prevent)
VK.players.multiplePlayersOnline = "@players joueurs en ligne"; // @players equals the players count
VK.players.onePlayerOnline = "1 joueur en ligne"; // Text when only one player is on the server
VK.players.noPlayerOnline = "Aucun joueur en ligne"; // Text when the server is empty

////////////////////////////////
