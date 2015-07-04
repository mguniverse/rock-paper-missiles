//
//  AppDelegate.h
//  Rock Paper Missiles
//
//  Created by Danny Perski on 2/9/15.
//  Copyright (c) 2015 Danny Perski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    AVAudioPlayer *menuMusic;
    int delayIntensity;
    BOOL musicDisabled;
}

-(void)gameplaySwitch;
-(void)titleSwitch;

-(void)muteMusic;
-(void)unmuteMusic;

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic, strong) AVAudioPlayer *menuMusic;


@end

