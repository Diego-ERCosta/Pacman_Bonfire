import 'package:bonfire/bonfire.dart';

class EnemySpriteSheet{

    static get runRight => SpriteAnimation.load(
      'ghost/redGhost.png',
       SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.05,
        textureSize: Vector2(32,32))
        );
    static get runLeft => SpriteAnimation.load(
      'ghost/redGhost.png',
      SpriteAnimationData.sequenced(
        amount: 1, 
        stepTime: 0.05, 
        textureSize: Vector2(32,32))
        );
    static get idle => SpriteAnimation.load(
      'ghost/redGhost.png',
      SpriteAnimationData.sequenced(
        amount: 1, 
        stepTime: 0.001, 
        textureSize: Vector2(32,32))
        );

}