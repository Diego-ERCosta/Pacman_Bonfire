import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:app/enemy/enemySpriteSheet.dart';
import 'package:app/enemy/ghostsRespawn.dart';

// ------------------------------------------

class Ghost extends SimpleEnemy with ObjectCollision, Lighting, UseStateController<GhostGeneratorController> {

  @override
  void update(double dt){
    seeAndMoveToPlayer(
      closePlayer: (player){
        //simpleAttackMelee(
         //damage: 10,
         //size: Vector2(100,100),
         //direction: lastDirection,
         //withPush: true,
        //);
      },
      radiusVision: 100 * 100,
    );
    super.update(dt);
  }

  @override
  void die() {
    controller.respawnMany();
    removeFromParent();
    super.die();
  }

  Ghost(Vector2 postion, {required Vector2 position})
    : super(
        position: postion,
        speed: 65,
        animation: SimpleDirectionAnimation(
          idleLeft: EnemySpriteSheet.idle,
          idleRight: EnemySpriteSheet.idle,
          runRight: EnemySpriteSheet.runRight,
          runLeft: EnemySpriteSheet.runLeft,
        ),
        size: postion,
      ){
        setupCollision(
          CollisionConfig(collisions: 
            [CollisionArea.rectangle(size: Vector2(10*2, 7*2), align: Vector2(4*2, 1*2))],
          )
        );
        setupLighting(LightingConfig(radius: 10, color: Colors.transparent, blurBorder: 30));
      } 
}