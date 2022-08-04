//
//  GameScene.m
//  CCFoundation Shared
//
//  Created by CC on 2022/8/4.
//

#import "GameScene.h"
#import <CCSet/CCSet.h>

@implementation GameScene {
    SKLabelNode *_label;
}

+ (GameScene *)newGameScene {
    // Load 'GameScene.sks' as an SKScene.
    GameScene *scene = (GameScene *)[SKScene node];
    scene.size = CGSizeMake(600, 600);
    if (!scene) {
        NSLog(@"Failed to load GameScene.sks");
        abort();
    }
    
    // Set the scale mode to scale to fit the window
    scene.scaleMode = SKSceneScaleModeAspectFill;
    scene.anchorPoint = CGPointMake(0.5, 0.5);
    
    SKLabelNode *_label  = [SKLabelNode labelNodeWithText:@"CCFoundation"];
    _label.name = @"CCFoundation";
    
    //CCFont test
    _label.fontColor = CCColorWithHexString(@"FFFF00");
    _label.fontSize = 36;
    _label.alpha = 0.0;
    
    [scene addChild:_label];
    
    [_label runAction:[SKAction fadeInWithDuration:2.0]];
    
    {
        // CCDebug test
        [CCDebug debugLogSwitch: YES];
        CCDebugPrint(@"Test CCFoundation");
    }
    
    {
        //More details can be found
        //https://github.com/ccworld1000/CCDebug
        //https://github.com/ccworld1000/CCFont
        //https://github.com/ccworld1000/CCSet
    }
    
    return scene;
}

@end
