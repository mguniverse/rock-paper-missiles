//
//  About_iPhone.h
//  Rock Paper Missiles
//
//  Created by Danny Perski on 5/23/15.
//  Copyright (c) 2015 Danny Perski. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <UIKit/UIKit.h>

@interface About_iPhone : UIViewController {
    AVAudioPlayer *buttonSound;
    
    BOOL animating;
    
    int buttonRadius;
    int soundClip;
    
    float animationSpeed;
    
    IBOutlet UILabel *bannerLabel;
    
    IBOutlet UIButton *moreGamesButton;
    IBOutlet UIButton *tutorialButton;
    
    IBOutlet UIButton *backButton;
    
    IBOutlet UIView *moreGamesView;
    IBOutlet UIView *tutorialView;
}

@end
