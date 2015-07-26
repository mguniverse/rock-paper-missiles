//
//  Supremacy_iPhone.h
//  Rock Paper Missiles
//
//  Created by Danny Perski on 5/23/15.
//  Copyright (c) 2015 Danny Perski. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <UIKit/UIKit.h>

@interface Supremacy_iPhone : UIViewController {
    AVAudioPlayer *buttonSound;
    
    BOOL stone;
    BOOL distraction;
    BOOL blade;
    BOOL explosive;
    BOOL mythical;
    BOOL flame;
    BOOL firearm;
    
    BOOL stoneTypeEnemy;
    BOOL distractionTypeEnemy;
    BOOL bladeTypeEnemy;
    BOOL explosiveTypeEnemy;
    BOOL flameTypeEnemy;
    BOOL mythicalTypeEnemy;
    BOOL firearmTypeEnemy;
    
    BOOL animating;
    BOOL training;
    BOOL newOpponent;
    
    int timerValue;
    int buttonRadius;
    int lastSelection;
    int results;
    int bonus;
    int score;
    int health;
    int soundClip;
    int shuffleCooldown;
    
    float combo;
    
    int currentMenu;
    float animationSpeed;
    
    int activeWeapon1;
    int activeWeapon2;
    int activeWeapon3;
    int opponentWeapon1;
    
    int opponentDurability;
    
    int trainingProgress;
    
    int currentCardView;
    
    IBOutlet UIProgressView *comboBar;
    
    IBOutlet UILabel *titleLabel1;
    IBOutlet UILabel *titleLabel2;
    IBOutlet UILabel *healthLabel;
    IBOutlet UILabel *errorLabel;
    IBOutlet UILabel *endLabel;
    IBOutlet UILabel *bannerLabel;
    IBOutlet UILabel *trainingLabel;
    IBOutlet UITextView *errorText;
    IBOutlet UITextView *endText;
    IBOutlet UITextView *trainingText;
    
    IBOutlet UIButton *playButton;
    IBOutlet UIButton *aboutButton;
    
    IBOutlet UIButton *backButton;
    IBOutlet UIButton *moreGamesButton;
    IBOutlet UIButton *quiverButton;
    IBOutlet UIButton *activeButton1;
    IBOutlet UIButton *activeButton2;
    IBOutlet UIButton *activeButton3;
    
    IBOutlet UIButton *menuButton;
    IBOutlet UIButton *shuffleButton;
    
    IBOutlet UIView *trainingView;
    
    IBOutlet UIView *retryView;
    IBOutlet UIView *mainMenuView;
    IBOutlet UIView *dismissView;
    
    IBOutlet UIView *endView;
    IBOutlet UIView *dimView;
    IBOutlet UIView *errorView;
    
    IBOutlet UIView *empty1;
    IBOutlet UIView *empty2;
    IBOutlet UIView *empty3;
    IBOutlet UIView *empty4;
    
    IBOutlet UIView *active1;
    IBOutlet UIView *active2;
    IBOutlet UIView *active3;
    IBOutlet UIView *opponent1;
    
    IBOutlet UILabel *opponentInfoLabel;
    IBOutlet UITextView *opponentInfoText;
    
    IBOutlet UIView *supremacyView;
    IBOutlet UIView *rushView;
    IBOutlet UIView *aboutView;
    IBOutlet UIView *backView;
    IBOutlet UIView *beginView;
    
    IBOutlet UIImageView *cinematicObject;
    IBOutlet UIImageView *activeImage1;
    IBOutlet UIImageView *activeImage2;
    IBOutlet UIImageView *activeImage3;
    IBOutlet UIImageView *opponentImage1;
    
    IBOutlet UIImageView *durabilityIndicator;
    
    UIImage *sourceImage;
    NSTimer *cinematicTimer;
}

@end
