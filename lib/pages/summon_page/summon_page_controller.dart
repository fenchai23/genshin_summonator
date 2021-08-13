import 'package:dart_vlc/dart_vlc.dart';
import 'package:get/get.dart';

class SummonPageController extends GetxController {
  Player bgMusicPlayer = Player(id: 111);

  @override
  Future<void> onInit() async {
    // Media media = Media.asset('file:///assets\genshin\sound\specialistP4.mp3');
    Media media = Media.network(
        'https://vgmsite.com/soundtracks/persona-4-dancing-all-night/wncrrxpp/2-01%20specialist%20%28_NEVER%20MORE_%20P4D-EDIT%20ver.%29.mp3');

    bgMusicPlayer.setVolume(0.75);
    bgMusicPlayer.open(media);
    bgMusicPlayer.setPlaylistMode(PlaylistMode.loop);

    super.onInit();
  }
}
