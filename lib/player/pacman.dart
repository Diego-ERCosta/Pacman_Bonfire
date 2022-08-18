import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:app/player/playerSpriteSheet.dart';

// ------------------------------------------

class Pacman extends SimplePlayer with ObjectCollision, Lighting{
  
  //@override
  //void die() async {
    //PlayerSpriteSheet.die;
    //removeFromParent();
    //super.die();
  //}

  Pacman(Vector2 postion)
    : super(
        position: postion,
        animation: SimpleDirectionAnimation(
          idleLeft: PlayerSpriteSheet.idle,
          idleRight: PlayerSpriteSheet.idle,
          runRight: PlayerSpriteSheet.runRight,
          runLeft: PlayerSpriteSheet.runLeft,
        ),
        size: Vector2(18*2, 10*2),
        //life: 30,
      ){
        setupCollision(
          CollisionConfig(collisions: 
            [CollisionArea.rectangle(size: Vector2(10*2, 7*2), align: Vector2(4*2, 1*2))],
          )
        );
        setupLighting(LightingConfig(radius: 32, color: Colors.transparent, blurBorder: 20));
      } 
}