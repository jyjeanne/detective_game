import 'dart:ui';
import 'package:detective_game/game/gameplay.dart';
import 'package:detective_game/game/scene/scene.dart';

// MT01 ==> Main Thread (Scene) 02
class MT03 extends Scene {
  // Asset Paths
  static List<String> bgdImages = <String>[
    'locations/main_thread/05',
  ];

  static List<String> dlgFiles = <String>[
    'assets/audio/dialogues/main_thread/03/transcript.txt', // Txt file with transcript of each dialogue(1 line - 1 dialogue)
    'audio/dialogues/main_thread/03/01.mp3', // Other lines are audio files of each dialogue
  ];

  static List<int> chgBackground = <int>[];

  MT03(Gameplay gameplay) : super(bgdImages, dlgFiles, chgBackground, gameplay);
}
