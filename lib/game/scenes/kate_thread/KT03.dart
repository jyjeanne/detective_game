import 'dart:ui';
import 'package:detective_game/game/gameplay.dart';
import 'package:detective_game/game/scene/scene.dart';

// DT01 ==> Daniel Thread (Scene) 01
class KT03 extends Scene {
  // Asset Paths
  static List<String> bgdImages = <String>[
    'locations/kate_thread/01',
  ];

  static List<String> dlgFiles = <String>[
    'assets/audio/dialogues/kate_thread/03/transcript.txt', // Txt file with transcript of each dialogue(1 line - 1 dialogue)
    'audio/dialogues/kate_thread/03/01.mp3', // Other lines are audio files of each dialogue
    'audio/dialogues/kate_thread/03/02.mp3',
    'audio/dialogues/kate_thread/03/03.mp3',
    'audio/dialogues/kate_thread/03/04.mp3',
    'audio/dialogues/kate_thread/03/05.mp3',
    'audio/dialogues/kate_thread/03/06.mp3',
    'audio/dialogues/kate_thread/03/07.mp3',
    'audio/dialogues/kate_thread/03/08.mp3',
    'audio/dialogues/kate_thread/03/09.mp3',
  ];

  static List<int> chgBackground = <int>[];

  KT03(Gameplay gameplay) : super(bgdImages, dlgFiles, chgBackground, gameplay);

  @override
  void nextScene() {
    // Come back to scene
    this.gameplay.playMainThreadScene(index: 11);
  }
}