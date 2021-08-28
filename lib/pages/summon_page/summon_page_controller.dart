import 'package:dart_vlc/dart_vlc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SummonPageController extends GetxController {
  Player bgMusicPlayer = Player(id: 111);
  late SharedPreferences prefs;
  late bool isBgMusicPlaying;

  @override
  Future<void> onInit() async {
    // Media media = Media.asset('file:///assets\genshin\sound\specialistP4.mp3');

    Playlist playlist = Playlist(
      medias: [
        Media.network('https://www.dropbox.com/s/jg2ejmu43uvkx2v/4.mp3?dl=1'),
        Media.network('https://www.dropbox.com/s/9mqun2c6bxml0hi/1.mp3?dl=1'),
        Media.network('https://www.dropbox.com/s/lspdipignhy3i6m/2.mp3?dl=1'),
        Media.network('https://www.dropbox.com/s/si032f16643ckhg/3.mp3?dl=1'),
        Media.network('https://www.dropbox.com/s/q878dcm0k6rrfgq/5.mp3?dl=1'),
      ],
    );

    bgMusicPlayer.setVolume(0.50);
    bgMusicPlayer.next();
    bgMusicPlayer.open(playlist);
    bgMusicPlayer.setPlaylistMode(PlaylistMode.loop);

    prefs = await SharedPreferences.getInstance();

    if (prefs.getBool('isBgMusicOn') == false) {
      isBgMusicPlaying = false;
      bgMusicPlayer.stop();
    } else
      isBgMusicPlaying = true;

    super.onInit();
  }

  Future<void> setBgPlayerStatus() async {
    if (isBgMusicPlaying) {
      bgMusicPlayer.pause();
      await prefs.setBool('isBgMusicOn', false);
      isBgMusicPlaying = false;
    } else {
      bgMusicPlayer.play();
      await prefs.setBool('isBgMusicOn', true);
      isBgMusicPlaying = true;
    }

    update();
  }
}
