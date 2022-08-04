//
//  GameViewController.m
//  CCSet iOS
//
//  Created by CC on 2022/8/4.
//

#import "GameViewController.h"
#import "GameScene.h"

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    GameScene *scene = [GameScene newGameScene];
    
    // Present the scene
    SKView *skView = (SKView *)self.view;
    [skView presentScene:scene];
    
    skView.ignoresSiblingOrder = YES;
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
