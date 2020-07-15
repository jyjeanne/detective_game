import 'dart:ui';
import 'package:detective_game/game/gameplay.dart';
import 'package:detective_game/game/scene/scene.dart';

// DT01 ==> Daniel Thread (Scene) 01
class LT05 extends Scene {
  // Asset Paths
  static List<String> bgdImages = <String>[
    'locations/luca_thread/04',
  ];

  static List<String> dlgFiles = <String>[
    'assets/audio/dialogues/luca_thread/05/transcript.txt', // Txt file with transcript of each dialogue(1 line - 1 dialogue)
    'audio/dialogues/luca_thread/05/01.mp3', // Other lines are audio files of each dialogue
    'audio/dialogues/luca_thread/05/02.mp3',
    'audio/dialogues/luca_thread/05/03.mp3',
    'audio/dialogues/luca_thread/05/04.mp3',
    'audio/dialogues/luca_thread/05/05.mp3',
    'audio/dialogues/luca_thread/05/06.mp3',
    'audio/dialogues/luca_thread/05/07.mp3',
  ];

  static List<int> chgBackground = <int>[];

  LT05(Gameplay gameplay) : super(bgdImages, dlgFiles, chgBackground, gameplay);

  @override
  void nextScene() {
    // Come back to scene
    this.gameplay.playMainThreadScene(index: 11);
  }
}