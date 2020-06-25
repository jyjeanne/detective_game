import 'dart:ui';
import 'package:detective_game/game/gameplay.dart';
import 'package:detective_game/game/scene/scene.dart';

// MT01 ==> Main Thread (Scene) 02
class MT15 extends Scene {

  // Asset Paths
  static List<String> bgdImages = <String>[
    'locations/main_thread/15/01',
  ];
  
  static List<String> dlgFiles = <String>[
    'assets/audio/dialogues/main_thread/15/transcript.txt',   // Txt file with transcript of each dialogue(1 line - 1 dialogue)
    'audio/dialogues/main_thread/15/01.mp3',                  // Other lines are audio files of each dialogue
    'audio/dialogues/main_thread/15/02_a.mp3',
    'audio/dialogues/main_thread/15/02_b.mp3',
    'audio/dialogues/main_thread/15/02_c.mp3',
    'audio/dialogues/main_thread/15/02_d.mp3',
    'audio/dialogues/main_thread/15/02_e.mp3',
    'audio/dialogues/main_thread/15/03.mp3',
    'audio/dialogues/main_thread/15/04_a.mp3',
    'audio/dialogues/main_thread/15/04_b.mp3',
    'audio/dialogues/main_thread/15/04_c.mp3',
    'audio/dialogues/main_thread/15/05_a.mp3',
    'audio/dialogues/main_thread/15/05_b.mp3',
    'audio/dialogues/main_thread/15/05_c.mp3',
    ];
  
  MT15(Gameplay gameplay) : super(bgdImages, dlgFiles, gameplay);
  
  @override
  void update(double t) {
    super.update(t);
  }

}