import 'dart:ui';
import 'package:wyatts_story/game/gameplay.dart';
import 'package:wyatts_story/game/scene/scene.dart';

class MT06 extends Scene {
  // MT06 ==> Main Thread (Scene) 06
  // bgdImages: contains background images paths SHOULDNT BE EMPTY
  //
  // dlgFiles: contains dialogues music files paths SHOULDNT BE EMPTY
  // List start from path to file with dialogues saved in txt. Basing on that file,
  // the UI is generated. Scene automatically plays dialogues starting from index 1
  // Transcript.txt should have the number of lines equals dlgFiles.length-1
  //
  // chgBackground: contains int's saying at which dialogue(it's index)
  // scene should change background to the following ones listed in bgdImages MAY BE EMPTY
  // ambient: contains path to ambient backgorund of scene If not null it will be played(in loop)
  // automatically when scene starts and automatically stopped when scene ends
  static List<String> bgdImages = <String>[
    'locations/main_thread/05',
  ];

  static List<String> dlgFiles = <String>[
    'assets/audio/dialogues/main_thread/06/transcript.txt', // Txt file with transcript of each dialogue(1 line - 1 dialogue)
    'audio/dialogues/main_thread/06/01.mp3', // Other lines are audio files of each dialogue
  ];

  static List<int> chgBackground = <int>[];
  static String ambient;

  MT06(Gameplay gameplay)
      : super(bgdImages, dlgFiles, chgBackground, gameplay, ambient);
}
