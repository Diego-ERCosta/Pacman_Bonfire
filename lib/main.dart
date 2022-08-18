import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flame_audio/flame_audio.dart';

// ------------------------------------------

import 'package:app/enemy/ghostsRespawn.dart';
import 'package:app/enemy/ghost.dart';
import 'package:app/player/pacman.dart';

// ------------------------------------------
// Pacman game ⍩⃝ - Work in progress...
// ------------------------------------------

void main() {
  BonfireInjector.instance.put((i) => GhostGeneratorController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pacman',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      home: const Game(),
    );
  }
}

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Background music
    FlameAudio.loop('theme.mp3', volume: .25);

    return BonfireTiledWidget(
      // Player control
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows)
      ),

      // Call Tiled map
      map: TiledWorldMap('mapa.json'), 

      // Instantiating characters
      player: Pacman(Vector2(50*2, 10*2)),
      components: [Ghost(position: Vector2(5*13, 5*14), Vector2(18*2, 10*2))],

      // Used for detecting clipping
      showCollisionArea: false,

      // To create the light effect
      lightingColorGame: Colors.black.withOpacity(0.4),
    );
    
  }

}