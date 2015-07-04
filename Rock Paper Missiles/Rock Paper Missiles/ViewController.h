//
//  ViewController.h
//  Rock Paper Missiles
//
//  Created by Danny Perski on 2/9/15.
//  Copyright (c) 2015 Danny Perski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    AVAudioPlayer *buttonSound;
    
    BOOL animating;
    
    int buttonRadius;
    int soundClip;
    
    int currentMenu;
    float animationSpeed;
    
    IBOutlet UILabel *bannerLabel;
    
    IBOutlet UIButton *playButton;
    IBOutlet UIButton *aboutButton;
    
    IBOutlet UIButton *backButton;
    
    IBOutlet UIView *opponentInfo1;
    
    IBOutlet UIView *supremacyView;
    IBOutlet UIView *rushView;
    IBOutlet UIView *aboutView;
    IBOutlet UIView *backView;
    IBOutlet UIView *beginView;
    
    UIImage *sourceImage;
    NSTimer *cinematicTimer;
}

@end