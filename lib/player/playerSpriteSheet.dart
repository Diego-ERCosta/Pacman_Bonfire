import 'package:bonfire/bonfire.dart';

class PlayerSpriteSheet{

    static get runRight => SpriteAnimation.load(
      'player/pacmanRight.png',
       SpriteAnimationData.sequenced(
        amount: 3,
        stepTime: 0.07,
        textureSize: Vector2(32,32))
        );
    static get runLeft => SpriteAnimation.load(
      'player/pacmanLeft.png',
      SpriteAnimationData.sequenced(
        amount: 3, 
        stepTime: 0.07, 
        textureSize: Vector2(32,32))
        );
    static get idle => SpriteAnimation.load(
      'player/pacmanIdle.png',
      SpriteAnimationData.sequenced(
        amount: 1, 
        stepTime: 0.001, 
        textureSize: Vector2(32,32))
        );
    static get die => SpriteAnimation.load(
      'player/pacmanDie.png',
      SpriteAnimationData.sequenced(
        amount: 12, 
        stepTime: 0.1, 
        textureSize: Vector2(8,8))
        );
}