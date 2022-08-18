import 'dart:math';
import 'package:bonfire/bonfire.dart';
import 'package:app/enemy/ghost.dart';

// ------------------------------------------

//Work in progress...
class GhostGeneratorController extends StateController<Ghost> {
  //Spawn in the middle of the map
  final _positionsToRespawn = [
    Vector2(13, 14),
    Vector2(14, 14),
  ];
  final _quantityRespawns = 4;

  void respawnMany() {
    final random = Random();
    final positions = List<Vector2>.from(_positionsToRespawn);
    int numberOfRespawn = _quantityRespawns;

    while (numberOfRespawn > 0) {
      final indexPosition = random.nextInt(positions.length);
      final position = positions[indexPosition];
      _respawn(position);
      positions.remove(position);
      numberOfRespawn -= 1;
    }
  }

  void _respawn(Vector2 position) {
    final hasGameRef = component?.hasGameRef ?? false;
    if (hasGameRef && !gameRef.camera.isMoving) {
      final ghost = Ghost(position: position, Vector2(18*2, 10*2));
      gameRef.add(ghost);
    }
  }

  @override
  void update(double dt, component) {}
}