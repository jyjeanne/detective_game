import 'dart:ui';
import 'package:detective_game/game/gameplay.dart';
import 'package:detective_game/game/scene/scene.dart';
import 'package:detective_game/services/local_save_manager.dart';

// MT01 ==> Main Thread (Scene) 02
class MT10 extends Scene {
  // Asset Paths
  static List<String> bgdImages = <String>[
    'locations/main_thread/13',
    'locations/main_thread/14',
  ];

  static List<String> dlgFiles = <String>[
    'assets/audio/dialogues/main_thread/10/transcript.txt', // Txt file with transcript of each dialogue(1 line - 1 dialogue)
    'audio/dialogues/main_thread/10/01.mp3', // Other lines are audio files of each dialogue
    'audio/dialogues/main_thread/10/02_a.mp3',
    'audio/dialogues/main_thread/10/02_b.mp3',
    'audio/dialogues/main_thread/10/02_c.mp3',
    'audio/dialogues/main_thread/10/03.mp3',
    'audio/dialogues/main_thread/10/04.mp3',
    'audio/dialogues/main_thread/10/05.mp3',
    'audio/dialogues/main_thread/10/06.mp3',
    'audio/dialogues/main_thread/10/07.mp3',
    'audio/dialogues/main_thread/10/08.mp3',
    'audio/dialogues/main_thread/10/09.mp3',
    'audio/dialogues/main_thread/10/10.mp3',
    'audio/dialogues/main_thread/10/11.mp3',
    'audio/dialogues/main_thread/10/12_a.mp3',
    'audio/dialogues/main_thread/10/12_b.mp3',
    'audio/dialogues/main_thread/10/12_c.mp3',
    'audio/dialogues/main_thread/10/13.mp3',
  ];

  static List<int> chgBackground = <int>[7];

  MT10(Gameplay gameplay) : super(bgdImages, dlgFiles, chgBackground, gameplay);

  @override
  void onStart() {
    LocalSaveManager().clearSavedChoicesForScene(this.runtimeType.toString());
  }
}
