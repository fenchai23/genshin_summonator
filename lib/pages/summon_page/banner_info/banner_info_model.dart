class BannerInfoModel {
  static Map<String, String> starIcons = {
    "5":
        "https://static.wikia.nocookie.net/gensin-impact/images/2/2b/Icon_5_Stars.png/revision/latest/scale-to-width-down/63?cb=20201226100736",
    "4":
        "https://static.wikia.nocookie.net/gensin-impact/images/7/77/Icon_4_Stars.png/revision/latest/scale-to-width-down/51?cb=20201226100702",
    "3":
        "https://static.wikia.nocookie.net/gensin-impact/images/1/11/Icon_3_Stars.png/revision/latest/scale-to-width-down/40?cb=20201226100630",
    "2":
        "https://static.wikia.nocookie.net/gensin-impact/images/6/64/Icon_2_Stars.png/revision/latest/scale-to-width-down/28?cb=20201226100559",
    "1":
        "https://static.wikia.nocookie.net/gensin-impact/images/b/b7/Icon_1_Star.png/revision/latest/scale-to-width-down/16?cb=20201226100531"
  };

  static Map<String, String> currency = {
    "primogem":
        "https://static.wikia.nocookie.net/gensin-impact/images/d/d4/Item_Primogem.png/revision/latest/scale-to-width-down/256?cb=20201117071158",
    "intertwined_fate":
        "https://static.wikia.nocookie.net/gensin-impact/images/1/1f/Item_Intertwined_Fate.png/revision/latest?cb=20201117073436",
    "acquaint_fate":
        "https://static.wikia.nocookie.net/gensin-impact/images/2/22/Item_Acquaint_Fate.png/revision/latest?cb=20201117073340",
  };

  static Map<String, dynamic> eventCharacters = {
    '2021-08-10_Wish_Tapestry_of_Golden_Flames.png': {
      '5': ['yoimiya.json'],
      '4': ['sayu.json', 'xinyan.json', 'diona.json']
    },
    '2021-07-22_The_Herons_Court.jpeg': {
      '5': ['kamisatoayaka.json'],
      '4': ['chongyun.json', 'ningguang.json', 'yanfei.json']
    },
    '2021-07-03_Leaves_in_the_Wind.png': {
      '5': ['kaedeharakazuha.json'],
      '4': ['bennett.json', 'rosaria.json', 'razor.json']
    },
    '2021-05-19_Born_of_Ocean_Swell.jpg': {
      '5': ['eula.json'],
      '4': ['xingqiu.json', 'xinyan.json', 'beidou.json']
    },
    '2021-04-28_Gentry_of_Hermitage.jpg': {
      '5': ['zhongli.json'],
      '4': ['diona.json', 'noelle.json', 'yanfei.json']
    },
    '2021-04-06_Farewell_of_Snezhnaya.jpg': {
      '5': ['tartaglia.json'],
      '4': ['rosaria.json', 'fischl.json', 'barbara.json']
    },
    '2021-03-16_BalladInGoblets.jpg': {
      '5': ['venti.json'],
      '4': ['noelle.json', 'razor.json', 'sucrose.json']
    },
    '2021-03-02-MomentOfBloom.jpg': {
      '5': ['hutao.json'],
      '4': ['xingqiu.json', 'xiangling.json', 'chongyun.json']
    },
    '2021-02-17_Dance_of_Lanterns.jpg': {
      '5': ['keqing.json'],
      '4': ['barbara.json', 'bennett.json', 'ningguang.json']
    },
    '2021-02-03_Invitation_to_Mundane_Life.jpg': {
      '5': ['xiao.json'],
      '4': ['diona.json', 'xinyan.json', 'beidou.json']
    },
    '2021-01-13_Adrift_in_the_Harbor.jpeg': {
      '5': ['ganyu.json'],
      '4': ['noelle.json', 'xingqiu.json', 'xiangling.json']
    },
    '2020-12-23_Secretum_Secretorum.png': {
      '5': ['albedo.json'],
      '4': ['fischl.json', 'bennett.json', 'sucrose.json']
    },
    '2020-12-02_Gentry_of_Hermitage.jpg': {
      '5': ['zhongli.json'],
      '4': ['razor.json', 'xinyan.json', 'chongyun.json']
    },
    '2020-11-10_Farewell_of_Snezhnaya.jpg': {
      '5': ['tartaglia.json'],
      '4': ['ningguang.json', 'beidou.json', 'diona.json']
    },
    '2020-10-19_Sparkling_Steps.jpg': {
      '5': ['klee.json'],
      '4': ['xingqiu.json', 'noelle.json', 'sucrose.json']
    },
    '2020-09-28_BalladInGoblets.jpg': {
      '5': ['venti.json'],
      '4': ['xiangling.json', 'barbara.json', 'fischl.json']
    },
    'standard_banner.png': {
      '5': [
        "qiqi.json",
        "diluc.json",
        "jean.json",
        "keqing.json",
        "mona.json",
      ],
      '4': []
    }
  };

  static Map<String, String> nameMap = {
    "aether.json": "Aether",
    "albedo.json": "Albedo",
    "amber.json": "Amber",
    "barbara.json": "Barbara",
    "beidou.json": "Beidou",
    "bennett.json": "Bennett",
    "chongyun.json": "Chongyun",
    "diluc.json": "Diluc",
    "diona.json": "Diona",
    "eula.json": "Eula",
    "fischl.json": "Fischl",
    "ganyu.json": "Ganyu",
    "hutao.json": "Hu Tao",
    "jean.json": "Jean",
    "kaedeharakazuha.json": "Kaedehara Kazuha",
    "kaeya.json": "Kaeya",
    "kamisatoayaka.json": "Kamisato Ayaka",
    "keqing.json": "Keqing",
    "klee.json": "Klee",
    "lisa.json": "Lisa",
    "lumine.json": "Lumine",
    "mona.json": "Mona",
    "ningguang.json": "Ningguang",
    "noelle.json": "Noelle",
    "qiqi.json": "Qiqi",
    "razor.json": "Razor",
    "rosaria.json": "Rosaria",
    "sayu.json": "Sayu",
    "sucrose.json": "Sucrose",
    "tartaglia.json": "Tartaglia",
    "venti.json": "Venti",
    "xiangling.json": "Xiangling",
    "xiao.json": "Xiao",
    "xingqiu.json": "Xingqiu",
    "xinyan.json": "Xinyan",
    "yanfei.json": "Yanfei",
    "yoimiya.json": "Yoimiya",
    "zhongli.json": "Zhongli",
    "alleyhunter.json": "Alley Hunter",
    "amberbead.json": "Amber Bead",
    "amenomakageuchi.json": "Amenoma Kageuchi",
    "amosbow.json": "Amos' Bow",
    "apprenticesnotes.json": "Apprentice's Notes",
    "aquilafavonia.json": "Aquila Favonia",
    "beginnersprotector.json": "Beginner's Protector",
    "blackcliffagate.json": "Blackcliff Agate",
    "blackclifflongsword.json": "Blackcliff Longsword",
    "blackcliffpole.json": "Blackcliff Pole",
    "blackcliffslasher.json": "Blackcliff Slasher",
    "blackcliffwarbow.json": "Blackcliff Warbow",
    "blacktassel.json": "Black Tassel",
    "bloodtaintedgreatsword.json": "Bloodtainted Greatsword",
    "compoundbow.json": "Compound Bow",
    "coolsteel.json": "Cool Steel",
    "crescentpike.json": "Crescent Pike",
    "darkironsword.json": "Dark Iron Sword",
    "deathmatch.json": "Deathmatch",
    "debateclub.json": "Debate Club",
    "dodocotales.json": "Dodoco Tales",
    "dragonsbane.json": "Dragon's Bane",
    "dragonspinespear.json": "Dragonspine Spear",
    "dullblade.json": "Dull Blade",
    "ebonybow.json": "Ebony Bow",
    "elegyfortheend.json": "Elegy for the End",
    "emeraldorb.json": "Emerald Orb",
    "eyeofperception.json": "Eye of Perception",
    "favoniuscodex.json": "Favonius Codex",
    "favoniusgreatsword.json": "Favonius Greatsword",
    "favoniuslance.json": "Favonius Lance",
    "favoniussword.json": "Favonius Sword",
    "favoniuswarbow.json": "Favonius Warbow",
    "ferrousshadow.json": "Ferrous Shadow",
    "festeringdesire.json": "Festering Desire",
    "filletblade.json": "Fillet Blade",
    "freedomsworn.json": "Freedom-Sworn",
    "frostbearer.json": "Frostbearer",
    "hakushinring.json": "Hakushin Ring",
    "halberd.json": "Halberd",
    "hamayumi.json": "Hamayumi",
    "harbingerofdawn.json": "Harbinger of Dawn",
    "huntersbow.json": "Hunter's Bow",
    "ironpoint.json": "Iron Point",
    "ironsting.json": "Iron Sting",
    "katsuragikirinagamasa.json": "Katsuragikiri Nagamasa",
    "kitaincrossspear.json": "Kitain Cross Spear",
    "lionsroar.json": "Lion's Roar",
    "lithicblade.json": "Lithic Blade",
    "lithicspear.json": "Lithic Spear",
    "lostprayertothesacredwinds.json": "Lost Prayer to the Sacred Winds",
    "magicguide.json": "Magic Guide",
    "mappamare.json": "Mappa Mare",
    "memoryofdust.json": "Memory of Dust",
    "messenger.json": "Messenger",
    "mistsplitterreforged.json": "Mistsplitter Reforged",
    "mitternachtswaltz.json": "Mitternachts Waltz",
    "oldmercspal.json": "Old Merc's Pal",
    "otherworldlystory.json": "Otherworldly Story",
    "pocketgrimoire.json": "Pocket Grimoire",
    "primordialjadecutter.json": "Primordial Jade Cutter",
    "primordialjadewingedspear.json": "Primordial Jade Winged-Spear",
    "prototypeamber.json": "Prototype Amber",
    "prototypearchaic.json": "Prototype Archaic",
    "prototypecrescent.json": "Prototype Crescent",
    "prototyperancour.json": "Prototype Rancour",
    "prototypestarglitter.json": "Prototype Starglitter",
    "quartz.json": "Quartz",
    "rainslasher.json": "Rainslasher",
    "ravenbow.json": "Raven Bow",
    "recurvebow.json": "Recurve Bow",
    "royalbow.json": "Royal Bow",
    "royalgreatsword.json": "Royal Greatsword",
    "royalgrimoire.json": "Royal Grimoire",
    "royallongsword.json": "Royal Longsword",
    "royalspear.json": "Royal Spear",
    "rust.json": "Rust",
    "sacrificialbow.json": "Sacrificial Bow",
    "sacrificialfragments.json": "Sacrificial Fragments",
    "sacrificialgreatsword.json": "Sacrificial Greatsword",
    "sacrificialsword.json": "Sacrificial Sword",
    "seasonedhuntersbow.json": "Seasoned Hunter's Bow",
    "serpentspine.json": "Serpent Spine",
    "sharpshootersoath.json": "Sharpshooter's Oath",
    "silversword.json": "Silver Sword",
    "skyridergreatsword.json": "Skyrider Greatsword",
    "skyridersword.json": "Skyrider Sword",
    "skywardatlas.json": "Skyward Atlas",
    "skywardblade.json": "Skyward Blade",
    "skywardharp.json": "Skyward Harp",
    "skywardpride.json": "Skyward Pride",
    "skywardspine.json": "Skyward Spine",
    "slingshot.json": "Slingshot",
    "snowtombedstarsilver.json": "Snow-Tombed Starsilver",
    "solarpearl.json": "Solar Pearl",
    "songofbrokenpines.json": "Song of Broken Pines",
    "staffofhoma.json": "Staff of Homa",
    "summitshaper.json": "Summit Shaper",
    "swordofdescension.json": "Sword of Descension",
    "thealleyflash.json": "The Alley Flash",
    "thebell.json": "The Bell",
    "theblacksword.json": "The Black Sword",
    "theflagstaff.json": "The Flagstaff",
    "theflute.json": "The Flute",
    "thestringless.json": "The Stringless",
    "theunforged.json": "The Unforged",
    "theviridescenthunt.json": "The Viridescent Hunt",
    "thewidsith.json": "The Widsith",
    "thrillingtalesofdragonslayers.json": "Thrilling Tales of Dragon Slayers",
    "thunderingpulse.json": "Thundering Pulse",
    "travelershandysword.json": "Traveler's Handy Sword",
    "twinnephrite.json": "Twin Nephrite",
    "vortexvanquisher.json": "Vortex Vanquisher",
    "wastergreatsword.json": "Waster Greatsword",
    "whiteblind.json": "Whiteblind",
    "whiteirongreatsword.json": "White Iron Greatsword",
    "whitetassel.json": "White Tassel",
    "windblumeode.json": "Windblume Ode",
    "wineandsong.json": "Wine and Song",
    "wolfsgravestone.json": "Wolf's Gravestone"
  };

  static Map<String, dynamic> images = {
    "aether.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/71/Character_Traveler_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Traveler_Male_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/47/Character_Traveler_%28Male%29_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_PlayerBoy.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_PlayerBoy.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/avatar/avatar40026.png"
    },
    "albedo.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/00/Character_Albedo_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/f8/Character_Albedo_Card.png",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/23/Character_Albedo_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Albedo.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Albedo.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201216/2020121611204969580.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201216/2020121611271023422.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/94dd9e0cc9d8311e58887a45b9b14861.png"
    },
    "amber.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/c6/Character_Amber_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/26/Character_Amber_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/00/Character_Amber_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Ambor.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Ambor.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191009/2019100914372396510.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191009/2019100914390892929.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/avatar/avatar40019.png"
    },
    "barbara.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/72/Character_Barbara_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/9/93/Character_Barbara_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/4a/Character_Barbara_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Barbara.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Barbara.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200609/2020060915101631868.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200609/2020060915102571828.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityweb/upload/2adac6e4e0195c39d90696955f9a7902.png"
    },
    "beidou.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/61/Character_Beidou_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/8/84/Character_Beidou_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/74/Character_Beidou_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Beidou.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Beidou.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200227/2020022720085973518.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200227/2020022720104965706.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/f78bb647eb902a50b11f90bd9971feba.png"
    },
    "bennett.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/7b/Character_Bennett_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/7f/Character_Bennett_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/73/Character_Bennett_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Bennett.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Bennett.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200312/2020031220001589124.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200312/2020031220015487912.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/661fca5d5165dee41fd29c142a59c2f9.png"
    },
    "chongyun.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/68/Character_Chongyun_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/fa/Character_Chongyun_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/aa/Character_Chongyun_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Chongyun.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Chongyun.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200602/2020060220172055224.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200602/2020060220205013044.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/182fa07e4434f581d43825b29da54124.png"
    },
    "diluc.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/02/Character_Diluc_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/45/Character_Diluc_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/b/bc/Character_Diluc_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Diluc.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Diluc.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200609/2020060915105884221.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200609/2020060915105012670.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/avatar/avatar40028.png"
    },
    "diona.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/b/b9/Character_Diona_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/08/Character_Diona_Card.png",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/ce/Character_Diona_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Diona.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Diona.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201106/2020110618565219627.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201106/2020110618595613115.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/e943399e199686e6d8eff33cb692af28.png"
    },
    "fischl.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/14/Character_Fischl_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/48/Character_Fischl_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/34/Character_Fischl_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Fischl.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Fischl.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200402/2020040211240853891.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200402/2020040211242065763.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/499df29a5e6b1fc95ddb2a51c3b808b4.png"
    },
    "ganyu.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/0a/Character_Ganyu_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/8/8d/Character_Ganyu_Card.png",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/a0/Character_Ganyu_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Ganyu.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Ganyu.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210105/2021010519275372324.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210105/2021010519280045054.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/4af4adf192a35db2dd76d9718acc7bc8.png"
    },
    "hutao.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/a4/Character_Hu_Tao_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/22/Character_Hu_Tao_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/5/50/Character_Hu_Tao_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Hutao.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Hutao.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210224/2021022411345864283.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210224/2021022411361082980.png",
      "hoyolab-avatar": ""
    },
    "jean.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/8/89/Character_Jean_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/0e/Character_Jean_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/02/Character_Jean_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Qin.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Qin.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200616/2020061611214389168.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200616/2020061611215344626.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/avatar/avatar40007.png"
    },
    "kaeya.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/33/Character_Kaeya_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/64/Character_Kaeya_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Character_Kaeya_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Kaeya.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Kaeya.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191009/2019100910335338023.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191009/2019100910351589464.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/avatar/avatar40001.png"
    },
    "keqing.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/06/Character_Keqing_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Character_Keqing_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/8/81/Character_Keqing_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Keqing.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Keqing.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200828/2020082817192486254.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200828/2020082817205925817.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/1bfac6512f4d135b065bc85bae268d3f.png"
    },
    "klee.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/c3/Character_Klee_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/78/Character_Klee_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/3f/Character_Klee_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Klee.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Klee.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200103/2020010310582722822.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200103/2020010311014850622.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/cb31fe8dae809ebdbc72039cba527501.png"
    },
    "lisa.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/5/51/Character_Lisa_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/d/dc/Character_Lisa_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/fa/Character_Lisa_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Lisa.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Lisa.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191009/2019100915122465321.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191009/2019100915140016827.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/avatar/avatar40021.png"
    },
    "lumine.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/71/Character_Traveler_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/c8/Traveler_Female_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/24/Character_Traveler_%28Female%29_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_PlayerGirl.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_PlayerGirl.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/avatar/avatar40017.png"
    },
    "mona.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/a0/Character_Mona_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/69/Character_Mona_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/fe/Character_Mona_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Mona.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Mona.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200828/2020082817270842074.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200828/2020082817353421694.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/1fa7a20fb3b391132e1132ab2a44e146.png"
    },
    "ningguang.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/2b/Character_Ningguang_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/3e/Character_Ningguang_Card.jpg/",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/17/Character_Ningguang_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Ningguang.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Ningguang.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200305/2020030519413867244.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200305/2020030519431658285.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/c44caa291b735e6d679ae9f4eb11426e.png"
    },
    "noelle.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/ab/Character_Noelle_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/9/92/Character_Noelle_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/a5/Character_Noelle_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Noel.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Noel.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200315/2020031517331523512.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200325/2020032510564718459.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/42120a5c88658419970a1e8f71d2b245.png"
    },
    "qiqi.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/d/d5/Character_Qiqi_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/b/b9/Character_Qiqi_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/2a/Character_Qiqi_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Qiqi.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Qiqi.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200828/2020082817145380161.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200828/2020082817153781489.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/9438885c72bddc067a0b0e4f94611cb7.png"
    },
    "razor.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/1d/Character_Razor_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/68/Character_Razor_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/1e/Character_Razor_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Razor.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Razor.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191028/2019102814495922891.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191018/2019101811585976188.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityweb/upload/7537c48f03523f00c8dcb0e3297aaa1a.png"
    },
    "rosaria.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Rosaria.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Rosaria.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210325/2021032515083899881.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210325/2021032515090348894.png",
      "hoyolab-avatar": ""
    },
    "sucrose.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/61/Character_Sucrose_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/22/Character_Sucrose_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/20/Character_Sucrose_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Sucrose.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Sucrose.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200723/2020072319115159476.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200723/2020072319142329434.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/4ffb3198b59f3ae36df71d4b938447af.png"
    },
    "tartaglia.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/5/53/Character_Tartaglia_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/4c/Character_Tartaglia_Card.png",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Character_Tartaglia_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Tartaglia.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Tartaglia.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201103/2020110321160453386.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201103/2020110321234137061.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/34ebaeb164a8b447dbe52afaae3e1f63.png"
    },
    "venti.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/8/8d/Character_Venti_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/76/Character_Venti_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/cf/Character_Venti_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Venti.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Venti.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191122/2019112210305833310.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20191122/2019112211143037621.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/avatar/avatar40022.png"
    },
    "xiangling.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/a0/Character_Xiangling_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/f1/Character_Xiangling_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/22/Character_Xiangling_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Xiangling.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Xiangling.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200316/2020031618224235129.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200325/2020032510443747968.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/f406695ce989bda634c6d952eb15493a.png"
    },
    "xiao.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/b/b9/Character_Xiao_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/8/88/Character_Xiao_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/1e/Character_Xiao_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Xiao.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Xiao.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210122/2021012215393946486.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210122/2021012210173258296.png",
      "hoyolab-avatar": ""
    },
    "xingqiu.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/4a/Character_Xingqiu_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Character_Xingqiu_Card.jpg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/a9/Character_Xingqiu_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Xingqiu.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Xingqiu.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200324/2020032418063418099.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20200324/2020032418111666598.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/fa6b94ec6e93d14eef913e441213ffc1.png"
    },
    "xinyan.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/9/9d/Character_Xinyan_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/4c/Character_Xinyan_Card.jpeg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/c8/Character_Xinyan_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Xinyan.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Xinyan.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201125/2020112516015894679.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201125/2020112516125848571.png",
      "hoyolab-avatar": ""
    },
    "zhongli.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Character_Zhongli_Thumb.png",
      "card":
          "https://static.wikia.nocookie.net/gensin-impact/images/d/d8/Character_Zhongli_Card.jpeg",
      "portrait":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/7d/Character_Zhongli_Portrait.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Zhongli.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Zhongli.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201123/2020112310503599073.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20201123/2020112310504363585.png",
      "hoyolab-avatar":
          "https://img-os-static.hoyolab.com/communityWeb/upload/1f91a3b092cf7ca58b401763a4e42551.png"
    },
    "yanfei.json": {
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210421/2021042114214196211.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210421/2021042114231180906.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Feiyan.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Feiyan.png"
    },
    "eula.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Eula.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Eula.png",
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210510/2021051011361876265.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210510/2021051011383243523.png"
    },
    "kaedeharakazuha.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Kazuha.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Kazuha.png"
    },
    "kazuha.json": {
      "cover1":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210622/2021062217445558895.png",
      "cover2":
          "https://uploadstatic-sea.mihoyo.com/contentweb/20210622/2021062217460699632.png"
    },
    "yoimiya.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Yoimiya.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Yoimiya.png"
    },
    "sayu.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Sayu.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Sayu.png"
    },
    "kamisatoayaka.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_icon/UI_AvatarIcon_Ayaka.png",
      "sideicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_Ayaka.png"
    },
    "alleyhunter.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Outlaw.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Outlaw_Awaken.png"
    },
    "amberbead.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Amber.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Amber_Awaken.png"
    },
    "amosbow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/d/de/Weapon_Amos%27_Bow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Amos.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Amos_Awaken.png"
    },
    "apprenticesnotes.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/cf/Weapon_Apprentice%27s_Notes.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Apprentice.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Apprentice_Awaken.png"
    },
    "aquilafavonia.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/6a/Weapon_Aquila_Favonia.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Falcon.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Falcon_Awaken.png"
    },
    "beginnersprotector.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/fc/Weapon_Beginner%27s_Protector.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Gewalt.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Gewalt_Awaken.png"
    },
    "blackcliffagate.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/a6/Weapon_Blackcliff_Agate.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Blackrock.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Blackrock_Awaken.png"
    },
    "blackclifflongsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/6f/Weapon_Blackcliff_Longsword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Blackrock.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Blackrock_Awaken.png"
    },
    "blackcliffpole.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/d/d5/Weapon_Blackcliff_Pole.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Blackrock.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Blackrock_Awaken.png"
    },
    "blackcliffslasher.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/d/d7/Weapon_Blackcliff_Slasher.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Blackrock.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Blackrock_Awaken.png"
    },
    "blackcliffwarbow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/b/b8/Weapon_Blackcliff_Warbow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Blackrock.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Blackrock_Awaken.png"
    },
    "blacktassel.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/43/Weapon_Black_Tassel.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Noire.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Noire_Awaken.png"
    },
    "bloodtaintedgreatsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/4a/Weapon_Bloodtainted_Greatsword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Siegfry.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Siegfry_Awaken.png"
    },
    "compoundbow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/32/Weapon_Compound_Bow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Exotic.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Exotic_Awaken.png"
    },
    "coolsteel.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/9/9c/Weapon_Cool_Steel.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Steel.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Steel_Awaken.png"
    },
    "crescentpike.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/4c/Weapon_Crescent_Pike.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Exotic.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Exotic_Awaken.png"
    },
    "darkironsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Weapon_Dark_Iron_Sword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Darker.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Darker_Awaken.png"
    },
    "deathmatch.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/69/Weapon_Deathmatch.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Gladiator.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Gladiator_Awaken.png"
    },
    "debateclub.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/74/Weapon_Debate_Club.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Reasoning.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Reasoning_Awaken.png"
    },
    "dragonsbane.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/24/Weapon_Dragon%27s_Bane.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Stardust.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Stardust_Awaken.png"
    },
    "dragonspinespear.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/1a/Weapon_Dragonspine_Spear.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Everfrost.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Everfrost_Awaken.png"
    },
    "dullblade.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Weapon_Dull_Blade.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Blunt.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Blunt_Awaken.png"
    },
    "ebonybow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/a1/Weapon_Ebony_Bow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Hardwood.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Hardwood_Awaken.png"
    },
    "elegyfortheend.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Widsith.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Widsith_Awaken.png"
    },
    "emeraldorb.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/7c/Weapon_Emerald_Orb.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Jade.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Jade_Awaken.png"
    },
    "eyeofperception.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/6c/Weapon_Eye_of_Perception.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Truelens.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Truelens_Awaken.png"
    },
    "favoniuscodex.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/36/Weapon_Favonius_Codex.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Zephyrus.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Zephyrus_Awaken.png"
    },
    "favoniusgreatsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/9/9c/Weapon_Favonius_Greatsword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Zephyrus.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Zephyrus_Awaken.png"
    },
    "favoniuslance.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/5/57/Weapon_Favonius_Lance.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Zephyrus.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Zephyrus_Awaken.png"
    },
    "favoniussword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/9/90/Weapon_Favonius_Sword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Zephyrus.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Zephyrus_Awaken.png"
    },
    "favoniuswarbow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/8/85/Weapon_Favonius_Warbow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Zephyrus.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Zephyrus_Awaken.png"
    },
    "ferrousshadow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Weapon_Ferrous_Shadow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Glaive.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Glaive_Awaken.png"
    },
    "festeringdesire.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/70/Weapon_Festering_Desire.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Magnum.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Magnum_Awaken.png"
    },
    "filletblade.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/f7/Weapon_Fillet_Blade.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Sashimi.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Sashimi_Awaken.png"
    },
    "frostbearer.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Weapon_Frostbearer.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Everfrost.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Everfrost_Awaken.png"
    },
    "halberd.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/41/Weapon_Halberd.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Halberd.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Halberd_Awaken.png"
    },
    "harbingerofdawn.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/23/Weapon_Harbinger_of_Dawn.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Dawn.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Dawn_Awaken.png"
    },
    "huntersbow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/44/Weapon_Hunter%27s_Bow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Hunters.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Hunters_Awaken.png"
    },
    "ironpoint.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/25/Weapon_Iron_Point.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Rod.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Rod_Awaken.png"
    },
    "ironsting.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/35/Weapon_Iron_Sting.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Exotic.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Exotic_Awaken.png"
    },
    "lionsroar.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/e/e6/Weapon_Lion%27s_Roar.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Rockkiller.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Rockkiller_Awaken.png"
    },
    "lithicblade.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Weapon_Lithic_Blade.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Lapis.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Lapis_Awaken.png"
    },
    "lithicspear.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/2a/Weapon_Lithic_Spear.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Lapis.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Lapis_Awaken.png"
    },
    "lostprayertothesacredwinds.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/9/98/Weapon_Lost_Prayer_to_the_Sacred_Winds.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Fourwinds.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Fourwinds_Awaken.png"
    },
    "magicguide.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/39/Weapon_Magic_Guide.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Intro.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Intro_Awaken.png"
    },
    "mappamare.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/4d/Weapon_Mappa_Mare.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Exotic.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Exotic_Awaken.png"
    },
    "memoryofdust.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/ca/Weapon_Memory_of_Dust.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Kunwu.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Kunwu_Awaken.png"
    },
    "messenger.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/38/Weapon_Messenger.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Msg.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Msg_Awaken.png"
    },
    "oldmercspal.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Weapon_Old_Merc%27s_Pal.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Oyaji.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Oyaji_Awaken.png"
    },
    "otherworldlystory.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/11/Weapon_Otherworldly_Story.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Lightnov.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Lightnov_Awaken.png"
    },
    "pocketgrimoire.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/16/Weapon_Pocket_Grimoire.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Pocket.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Pocket_Awaken.png"
    },
    "primordialjadecutter.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/2a/Weapon_Primordial_Jade_Cutter.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Morax.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Morax_Awaken.png"
    },
    "primordialjadewingedspear.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/8/80/Weapon_Primordial_Jade_Winged-Spear.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Morax.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Morax_Awaken.png"
    },
    "prototypeamber.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/2/2a/Weapon_Prototype_Amber.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Proto.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Proto_Awaken.png"
    },
    "prototypearchaic.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/ab/Weapon_Prototype_Archaic.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Proto.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Proto_Awaken.png"
    },
    "prototypecrescent.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/43/Weapon_Prototype_Crescent.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Proto.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Proto_Awaken.png"
    },
    "prototyperancour.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/e/ef/Weapon_Prototype_Rancour.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Proto.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Proto_Awaken.png"
    },
    "prototypestarglitter.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/7e/Weapon_Prototype_Starglitter.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Proto.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Proto_Awaken.png"
    },
    "quartz.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/71/Weapon_Quartz.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Quartz.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Quartz_Awaken.png"
    },
    "rainslasher.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/d/d4/Weapon_Rainslasher.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Perdue.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Perdue_Awaken.png"
    },
    "ravenbow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/d/d0/Weapon_Raven_Bow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Crowfeather.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Crowfeather_Awaken.png"
    },
    "recurvebow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/b/b5/Weapon_Recurve_Bow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Curve.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Curve_Awaken.png"
    },
    "royalbow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/9/99/Weapon_Royal_Bow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Theocrat.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Theocrat_Awaken.png"
    },
    "royalgreatsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Weapon_Royal_Greatsword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Theocrat.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Theocrat_Awaken.png"
    },
    "royalgrimoire.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/9/99/Weapon_Royal_Grimoire.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Theocrat.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Theocrat_Awaken.png"
    },
    "royallongsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/cd/Weapon_Royal_Longsword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Theocrat.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Theocrat_Awaken.png"
    },
    "royalspear.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/fd/Weapon_Royal_Spear.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Theocrat.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Theocrat_Awaken.png"
    },
    "rust.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Weapon_Rust.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Recluse.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Recluse_Awaken.png"
    },
    "sacrificialbow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Weapon_Sacrificial_Bow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Fossil.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Fossil_Awaken.png"
    },
    "sacrificialfragments.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/6c/Weapon_Sacrificial_Fragments.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Fossil.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Fossil_Awaken.png"
    },
    "sacrificialgreatsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/17/Weapon_Sacrificial_Greatsword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Fossil.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Fossil_Awaken.png"
    },
    "sacrificialsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/a/a0/Weapon_Sacrificial_Sword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Fossil.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Fossil_Awaken.png"
    },
    "seasonedhuntersbow.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/44/Weapon_Hunter%27s_Bow.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Old.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Old_Awaken.png"
    },
    "serpentspine.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/8/88/Weapon_Serpent_Spine.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Kione.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Kione_Awaken.png"
    },
    "sharpshootersoath.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/5/52/Weapon_Sharpshooter%27s_Oath.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Arjuna.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Arjuna_Awaken.png"
    },
    "silversword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/32/Weapon_Silver_Sword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Silver.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Silver_Awaken.png"
    },
    "skyridergreatsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/6e/Weapon_Skyrider_Greatsword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Mitsurugi.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Mitsurugi_Awaken.png"
    },
    "skyridersword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/34/Weapon_Skyrider_Sword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Mitsurugi.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Mitsurugi_Awaken.png"
    },
    "skywardatlas.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/3/33/Weapon_Skyward_Atlas.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Dvalin.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Dvalin_Awaken.png"
    },
    "skywardblade.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/03/Weapon_Skyward_Blade.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Dvalin.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Dvalin_Awaken.png"
    },
    "skywardharp.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/19/Weapon_Skyward_Harp.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Dvalin.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Dvalin_Awaken.png"
    },
    "skywardpride.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Weapon_Skyward_Pride.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Dvalin.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Dvalin_Awaken.png"
    },
    "skywardspine.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/69/Weapon_Skyward_Spine.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Dvalin.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Dvalin_Awaken.png"
    },
    "slingshot.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/ca/Weapon_Slingshot.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Sling.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Sling_Awaken.png"
    },
    "snowtombedstarsilver.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/49/Weapon_Snow-Tombed_Starsilver.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Dragonfell.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Dragonfell_Awaken.png"
    },
    "solarpearl.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/fc/Weapon_Solar_Pearl.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Resurrection.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Resurrection_Awaken.png"
    },
    "staffofhoma.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/17/Weapon_Staff_of_Homa.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Homa.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Homa_Awaken.png"
    },
    "summitshaper.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/ca/Weapon_Summit_Shaper.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Kunwu.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Kunwu_Awaken.png"
    },
    "swordofdescension.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/17/Weapon_Sword_of_Descension.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Psalmus.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Psalmus_Awaken.png"
    },
    "thealleyflash.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Outlaw.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Outlaw_Awaken.png"
    },
    "thebell.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/6e/Weapon_The_Bell.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Troupe.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Troupe_Awaken.png"
    },
    "theblacksword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/cf/Weapon_The_Black_Sword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Bloodstained.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Bloodstained_Awaken.png"
    },
    "theflagstaff.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Flagpole.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Flagpole_Awaken.png"
    },
    "theflute.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/6/63/Weapon_The_Flute.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Troupe.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Troupe_Awaken.png"
    },
    "thestringless.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/7/71/Weapon_The_Stringless.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Troupe.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Troupe_Awaken.png"
    },
    "theunforged.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/f7/Weapon_The_Unforged.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Kunwu.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Kunwu_Awaken.png"
    },
    "theviridescenthunt.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/ff/Weapon_The_Viridescent_Hunt.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Viridescent.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Viridescent_Awaken.png"
    },
    "thewidsith.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/f/f0/Weapon_The_Widsith.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Troupe.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Troupe_Awaken.png"
    },
    "thrillingtalesofdragonslayers.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/19/Weapon_Thrilling_Tales_of_Dragon_Slayers.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Pulpfic.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Pulpfic_Awaken.png"
    },
    "travelershandysword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/c/c9/Weapon_Traveler%27s_Handy_Sword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Traveler.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Traveler_Awaken.png"
    },
    "twinnephrite.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/e/e3/Weapon_Twin_Nephrite.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Phoney.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Phoney_Awaken.png"
    },
    "vortexvanquisher.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/d/d6/Weapon_Vortex_Vanquisher.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Kunwu.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Kunwu_Awaken.png"
    },
    "wastergreatsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/4c/Weapon_Waster_Greatsword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Aniki.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Aniki_Awaken.png"
    },
    "whiteblind.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/0/04/Weapon_Whiteblind.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Exotic.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Exotic_Awaken.png"
    },
    "whiteirongreatsword.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/5/56/Weapon_White_Iron_Greatsword.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Tin.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Tin_Awaken.png"
    },
    "whitetassel.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/1/1f/Weapon_White_Tassel.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Ruby.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Ruby_Awaken.png"
    },
    "windblumeode.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Fleurfair.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Fleurfair_Awaken.png"
    },
    "wineandsong.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Outlaw.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Outlaw_Awaken.png"
    },
    "wolfsgravestone.json": {
      "image":
          "https://static.wikia.nocookie.net/gensin-impact/images/4/4f/Weapon_Wolf%27s_Gravestone.png",
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Wolfmound.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Wolfmound_Awaken.png"
    },
    "songofbrokenpines.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Widsith.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Widsith_Awaken.png"
    },
    "freedomsworn.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Widsith.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Widsith_Awaken.png"
    },
    "dodocotales.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Ludiharpastum.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Ludiharpastum_Awaken.png"
    },
    "mitternachtswaltz.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Nachtblind.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Nachtblind_Awaken.png"
    },
    "amenomakageuchi.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Bakufu.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Bakufu_Awaken.png"
    },
    "mistsplitterreforged.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Narukami.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Sword_Narukami_Awaken.png"
    },
    "katsuragikirinagamasa.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Bakufu.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Claymore_Bakufu_Awaken.png"
    },
    "kitaincrossspear.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Bakufu.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Pole_Bakufu_Awaken.png"
    },
    "hakushinring.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Bakufu.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Catalyst_Bakufu_Awaken.png"
    },
    "hamayumi.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Bakufu.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Bakufu_Awaken.png"
    },
    "thunderingpulse.json": {
      "icon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Narukami.png",
      "awakenicon":
          "https://upload-os-bbs.mihoyo.com/game_record/genshin/equip/UI_EquipIcon_Bow_Narukami_Awaken.png"
    }
  };
}
