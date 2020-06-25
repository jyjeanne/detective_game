import 'dart:async';

import 'package:flutter/material.dart';
import 'package:detective_game/game/scene/displayer.dart';
import 'package:detective_game/game/scenes/config_resolution.dart';
import 'package:detective_game/game/scenes/daniel_thread/DT01.dart';
import 'package:detective_game/game/scenes/daniel_thread/DT02.dart';
import 'package:detective_game/game/scenes/daniel_thread/DT03.dart';
import 'package:detective_game/game/scenes/daniel_thread/DT04.dart';
import 'package:detective_game/game/scenes/jeff_thread/JT01.dart';
import 'package:detective_game/game/scenes/jeff_thread/JT02.dart';
import 'package:detective_game/game/scenes/jeff_thread/JT03.dart';
import 'package:detective_game/game/scenes/jeff_thread/JT04.dart';
import 'package:detective_game/game/scenes/jeff_thread/JT05.dart';
import 'package:detective_game/game/scenes/kate_thread/KT01.dart';
import 'package:detective_game/game/scenes/kate_thread/KT02.dart';
import 'package:detective_game/game/scenes/kate_thread/KT03.dart';
import 'package:detective_game/game/scenes/kate_thread/KT04.dart';
import 'package:detective_game/game/scenes/kate_thread/KT05.dart';
import 'package:detective_game/game/scenes/kate_thread/KT06.dart';
import 'package:detective_game/game/scenes/kate_thread/KT07.dart';
import 'package:detective_game/game/scenes/kate_thread/KT08.dart';
import 'package:detective_game/game/scenes/kate_thread/KT09.dart';
import 'package:detective_game/game/scenes/luca_thread/LT01.dart';
import 'package:detective_game/game/scenes/mike_thread/MK01.dart';
import 'package:detective_game/game/scenes/mike_thread/MK02.dart';
import 'package:detective_game/game/scenes/mike_thread/MK03.dart';
import 'package:detective_game/game/scenes/mike_thread/MK04.dart';
import 'package:detective_game/game/scenes/mike_thread/MK05.dart';
import 'package:detective_game/game/scenes/mike_thread/MK06.dart';
import 'package:detective_game/game/scenes/mike_thread/MK07.dart';
import 'package:detective_game/game/scenes/mike_thread/MK08.dart';
import 'package:detective_game/game/scenes/mike_thread/MK09.dart';
import 'package:detective_game/game/scenes/main_thread/MT01.dart';
import 'package:detective_game/game/scenes/main_thread/MT02.dart';
import 'package:detective_game/game/scenes/main_thread/MT03.dart';
import 'package:detective_game/game/scenes/main_thread/MT04.dart';
import 'package:detective_game/game/scenes/main_thread/MT05.dart';
import 'package:detective_game/game/scenes/main_thread/MT06.dart';
import 'package:detective_game/game/scenes/main_thread/MT07.dart';
import 'package:detective_game/game/scenes/main_thread/MT08.dart';
import 'package:detective_game/game/scenes/main_thread/MT09.dart';
import 'package:detective_game/game/scenes/main_thread/MT10.dart';
import 'package:detective_game/game/scenes/main_thread/MT11.dart';
import 'package:detective_game/game/scenes/main_thread/MT12.dart';
import 'package:detective_game/game/scenes/main_thread/MT13.dart';
import 'package:detective_game/game/scenes/main_thread/MT14.dart';
import 'package:detective_game/game/scenes/main_thread/MT15.dart';

// Manage gameplay, toggle between scenes
class Gameplay extends StatelessWidget {
  // Scenes
  List<Displayer> _jeffThread;
  List<Displayer> _kateThread;
  List<Displayer> _lucaThread;
  List<Displayer> _mainThread;
  List<Displayer> _mikeThread;
  List<Displayer> _danielThread;

  // Current scene played
  int _jeffThreadIndex = 0;
  int _kateThreadIndex = 0;
  int _lucaThreadIndex = 0;
  int _mainThreadIndex = 0;
  int _mikeThreadIndex = 0;
  int _danielThreadIndex = 0;

  var _scene;

  StreamController<bool> _sceneController = StreamController<bool>.broadcast();

  Gameplay() {
    _jeffThread = [
      Displayer(scene: JT01(this)),
      Displayer(scene: JT02(this)),
      Displayer(scene: JT03(this)),
      Displayer(scene: JT04(this)),
      Displayer(scene: JT05(this)),
    ];

    _kateThread = [
      Displayer(scene: KT01(this)),
      Displayer(scene: KT02(this)),
      Displayer(scene: KT03(this)),
      Displayer(scene: KT04(this)),
      Displayer(scene: KT05(this)),
      Displayer(scene: KT06(this)),
      Displayer(scene: KT07(this)),
      Displayer(scene: KT08(this)),
      Displayer(scene: KT09(this)),
    ];

    _lucaThread = [
      Displayer(scene: LT01(this)),
    ];

    _mainThread = [
      Displayer(scene: MT01(this)),
      Displayer(scene: MT02(this)),
      Displayer(scene: MT03(this)),
      Displayer(scene: MT04(this)),
      Displayer(scene: MT05(this)),
      Displayer(scene: MT06(this)),
      Displayer(scene: MT07(this)),
      Displayer(scene: MT08(this)),
      Displayer(scene: MT09(this)),
      Displayer(scene: MT10(this)),
      Displayer(scene: MT11(this)),
      Displayer(scene: MT12(this)),
      Displayer(scene: MT13(this)),
      Displayer(scene: MT14(this)),
      Displayer(scene: MT15(this)),
    ];

    _mikeThread = [
      Displayer(scene: MK01(this)),
      Displayer(scene: MK02(this)),
      Displayer(scene: MK03(this)),
      Displayer(scene: MK04(this)),
      Displayer(scene: MK05(this)),
      Displayer(scene: MK06(this)),
      Displayer(scene: MK07(this)),
      Displayer(scene: MK08(this)),
      Displayer(scene: MK09(this)),
    ];

    _danielThread = [
      Displayer(scene: DT01(this)),
      Displayer(scene: DT02(this)),
      Displayer(scene: DT03(this)),
      Displayer(scene: DT04(this)),
    ];
  }

  void nextScene() {
    // Decide which scene display
    _scene = _incrementScene();

    // Rebuild widget
    _sceneController.add(true);
  }

  Displayer _incrementScene() {
    _mainThreadIndex++;
    return _mainThread[_mainThreadIndex];
  }

  Displayer _initialScene() {
    // Load last played scene from shared prefs

    // In other case start with MT01
    return _mainThread[_mainThreadIndex];
  }

  @override
  Widget build(BuildContext context) {
    _scene = _initialScene(); 
    
    return StreamBuilder(
      stream: this._sceneController.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return _scene;
        }
        else if (snapshot.hasError) {}
        else {
          return _scene;
        }
      },
    );
  }
}