//
//  ViewController.m
//  Rock Paper Missiles
//
//  Created by Danny Perski on 10/17/15.
//  Copyright © 2015 Danny Perski. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)supremacy {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        if (currentMenu == 1) {
            currentSubMenu = 1;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            rushView.transform = CGAffineTransformMakeTranslation(-200, 0);
            aboutView.transform = CGAffineTransformMakeTranslation(-200, 0);
            rushView.alpha = 0;
            aboutView.alpha = 0;
            
            [UIView commitAnimations];
            
            backView.transform = CGAffineTransformMakeTranslation(200, 0);
            beginView.transform = CGAffineTransformMakeTranslation(200, 0);
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationDelay:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            CGRect newFrame = supremacyView.frame;
            newFrame.size = CGSizeMake(280.0, 144.0);
            supremacyView.frame = newFrame;
            
            backView.alpha = 1;
            beginView.alpha = 1;
            backView.transform = CGAffineTransformMakeTranslation(0, 0);
            beginView.transform = CGAffineTransformMakeTranslation(0, 0);
            
            [UIView commitAnimations];
            
            currentMenu++;
        }
        else {
            currentSubMenu = 0;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            CGRect newFrame = supremacyView.frame;
            newFrame.size = CGSizeMake(280.0, 68.0);
            supremacyView.frame = newFrame;
            
            backView.transform = CGAffineTransformMakeTranslation(-200, 0);
            beginView.transform = CGAffineTransformMakeTranslation(-200, 0);
            backView.alpha = 0;
            beginView.alpha = 0;
            
            [UIView commitAnimations];
            
            rushView.transform = CGAffineTransformMakeTranslation(200, 0);
            aboutView.transform = CGAffineTransformMakeTranslation(200, 0);
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationDelay:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            rushView.transform = CGAffineTransformMakeTranslation(0, 0);
            aboutView.transform = CGAffineTransformMakeTranslation(0, 0);
            rushView.alpha = 1;
            aboutView.alpha = 1;
            
            [UIView commitAnimations];
            
            currentMenu--;
        }
        
        [self performSelector:@selector(endAnimation) withObject:self afterDelay:animationSpeed];
    }
}

-(IBAction)rush {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        if (currentMenu == 1) {
            currentSubMenu = 2;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            supremacyView.transform = CGAffineTransformMakeTranslation(-200, 0);
            aboutView.transform = CGAffineTransformMakeTranslation(-200, 0);
            supremacyView.alpha = 0;
            aboutView.alpha = 0;
            
            [UIView commitAnimations];
            
            backView.transform = CGAffineTransformMakeTranslation(200, 0);
            beginView.transform = CGAffineTransformMakeTranslation(200, 0);
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationDelay:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            CGRect newFrame = rushView.frame;
            newFrame.size = CGSizeMake(280.0, 144.0);
            rushView.frame = newFrame;
            
            rushView.transform = CGAffineTransformMakeTranslation(0, -76);
            backView.alpha = 1;
            beginView.alpha = 1;
            backView.transform = CGAffineTransformMakeTranslation(0, 0);
            beginView.transform = CGAffineTransformMakeTranslation(0, 0);
            
            [UIView commitAnimations];
            
            currentMenu++;
        }
        else {
            currentSubMenu = 0;
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            CGRect newFrame = rushView.frame;
            newFrame.size = CGSizeMake(280.0, 68.0);
            rushView.frame = newFrame;
            
            rushView.transform = CGAffineTransformMakeTranslation(0, 0);
            backView.transform = CGAffineTransformMakeTranslation(-200, 0);
            beginView.transform = CGAffineTransformMakeTranslation(-200, 0);
            backView.alpha = 0;
            beginView.alpha = 0;
            
            [UIView commitAnimations];
            
            supremacyView.transform = CGAffineTransformMakeTranslation(200, 0);
            aboutView.transform = CGAffineTransformMakeTranslation(200, 0);
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationDelay:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            supremacyView.transform = CGAffineTransformMakeTranslation(0, 0);
            aboutView.transform = CGAffineTransformMakeTranslation(0, 0);
            supremacyView.alpha = 1;
            aboutView.alpha = 1;
            
            [UIView commitAnimations];
            
            currentMenu--;
        }
        [self performSelector:@selector(endAnimation) withObject:self afterDelay:animationSpeed*2];
    }
}

-(IBAction)about {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    supremacyView.transform = CGAffineTransformMakeTranslation(-200, 0);
    rushView.transform = CGAffineTransformMakeTranslation(-200, 0);
    aboutView.transform = CGAffineTransformMakeTranslation(-200, 0);
    supremacyView.alpha = 0;
    rushView.alpha = 0;
    aboutView.alpha = 0;
    
    bannerLabel.transform = CGAffineTransformMakeTranslation(0, 60);
    bannerLabel.alpha = 0;
    
    [UIView commitAnimations];
    
    [self performSelector:@selector(initiateAboutSegue) withObject:self afterDelay:animationSpeed                                                                                                                                                                                                              ];
}

-(IBAction)error {
    [self buttonSound];
    [self showError];
}

-(IBAction)startGame {
    [self buttonSound];
    
    if (currentSubMenu == 1) {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        supremacyView.transform = CGAffineTransformMakeTranslation(-200, 0);
        backView.transform = CGAffineTransformMakeTranslation(-200, 0);
        beginView.transform = CGAffineTransformMakeTranslation(-200, 0);
        supremacyView.alpha = 0;
        backView.alpha = 0;
        beginView.alpha = 0;
        
        bannerLabel.transform = CGAffineTransformMakeTranslation(0, 60);
        bannerLabel.alpha = 0;
        
        [UIView commitAnimations];
        
        [self performSelector:@selector(initiateSupremacySegue) withObject:self afterDelay:animationSpeed                                                                                                                                                                                                              ];
    }
    if (currentSubMenu == 2) {
        [self showError];
    }
    else {
    }
}

-(void)initiateSupremacySegue {
    [self performSegueWithIdentifier: @"Supremacy" sender: self];
}

-(void)initiateAboutSegue {
    [self performSegueWithIdentifier: @"About" sender: self];
}

/*
 -(void)beginCinematicMode {
 [self randomizeCinematicObject];
 
 if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 titleLabel1.transform = CGAffineTransformMakeTranslation(-40, 0);
 [UIView commitAnimations];
 
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 titleLabel2.transform = CGAffineTransformMakeTranslation(-40, 0);
 [UIView commitAnimations];
 
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 cinematicObject.transform = CGAffineTransformMakeTranslation(-100, 0);
 [UIView commitAnimations];
 }
 else {
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 titleLabel1.transform = CGAffineTransformMakeTranslation(-240, 0);
 [UIView commitAnimations];
 
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 titleLabel2.transform = CGAffineTransformMakeTranslation(-240, 0);
 [UIView commitAnimations];
 
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 cinematicObject.transform = CGAffineTransformMakeTranslation(-240, 0);
 [UIView commitAnimations];
 }
 }
 
 -(void)endCinematicMode {
 if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 titleLabel1.transform = CGAffineTransformMakeTranslation(0, 0);
 [UIView commitAnimations];
 
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 titleLabel2.transform = CGAffineTransformMakeTranslation(0, 0);
 [UIView commitAnimations];
 
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 cinematicObject.transform = CGAffineTransformMakeTranslation(0, 0);
 [UIView commitAnimations];
 }
 else {
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 titleLabel1.transform = CGAffineTransformMakeTranslation(0, 0);
 [UIView commitAnimations];
 
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 titleLabel2.transform = CGAffineTransformMakeTranslation(0, 0);
 [UIView commitAnimations];
 
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 cinematicObject.transform = CGAffineTransformMakeTranslation(0, 0);
 [UIView commitAnimations];
 }
 }
 
 -(void)randomizeCinematicObject {
 if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
 int Object = arc4random() % 21;
 switch (Object) {
 
 case 0:
 sourceImage = [UIImage imageNamed:@"rock-small.png"];
 break;
 case 1:
 sourceImage = [UIImage imageNamed:@"paper-small.png"];
 break;
 
 case 2:
 sourceImage = [UIImage imageNamed:@"scissors-small.png"];
 break;
 
 case 3:
 sourceImage = [UIImage imageNamed:@"missiles-small.png"];
 break;
 
 case 4:
 sourceImage = [UIImage imageNamed:@"dragon-small.png"];
 break;
 
 case 5:
 sourceImage = [UIImage imageNamed:@"flaming-arrow-small.png"];
 break;
 
 case 6:
 sourceImage = [UIImage imageNamed:@"flash-bang-small.png"];
 break;
 
 case 7:
 sourceImage = [UIImage imageNamed:@"grenade-small.png"];
 break;
 
 case 8:
 sourceImage = [UIImage imageNamed:@"molotov-small.png"];
 break;
 
 case 9:
 sourceImage = [UIImage imageNamed:@"hydra-small.png"];
 break;
 
 case 10:
 sourceImage = [UIImage imageNamed:@"meteor-small.png"];
 break;
 
 case 11:
 sourceImage = [UIImage imageNamed:@"shotgun-small.png"];
 break;
 
 case 12:
 sourceImage = [UIImage imageNamed:@"thrown-daggers-small.png"];
 break;
 
 case 13:
 sourceImage = [UIImage imageNamed:@"stone-stone-spear-small.png"];
 break;
 
 case 14:
 sourceImage = [UIImage imageNamed:@"bomb-arrow-small.png"];
 break;
 
 case 15:
 sourceImage = [UIImage imageNamed:@"flamethrower-small.png"];
 break;
 
 case 16:
 sourceImage = [UIImage imageNamed:@"katana-small.png"];
 break;
 
 case 17:
 sourceImage = [UIImage imageNamed:@"scarecrow-small.png"];
 break;
 
 case 18:
 sourceImage = [UIImage imageNamed:@"revolver-small.png"];
 break;
 
 case 19:
 sourceImage = [UIImage imageNamed:@"phoenix-small.png"];
 break;
 
 case 20:
 sourceImage = [UIImage imageNamed:@"rifle-small.png"];
 break;
 }
 }
 else {
 int Object = arc4random() % 15;
 switch (Object) {
 
 case 0:
 sourceImage = [UIImage imageNamed:@"rock.png"];
 break;
 case 1:
 sourceImage = [UIImage imageNamed:@"paper.png"];
 break;
 
 case 2:
 sourceImage = [UIImage imageNamed:@"scissors.png"];
 break;
 
 case 3:
 sourceImage = [UIImage imageNamed:@"missiles.png"];
 break;
 
 case 4:
 sourceImage = [UIImage imageNamed:@"dragon.png"];
 break;
 
 case 5:
 sourceImage = [UIImage imageNamed:@"flaming-arrow.png"];
 break;
 
 case 6:
 sourceImage = [UIImage imageNamed:@"flash-bang.png"];
 break;
 
 case 7:
 sourceImage = [UIImage imageNamed:@"grenade.png"];
 break;
 
 case 8:
 sourceImage = [UIImage imageNamed:@"molotov.png"];
 break;
 
 case 9:
 sourceImage = [UIImage imageNamed:@"hydra.png"];
 break;
 
 case 10:
 sourceImage = [UIImage imageNamed:@"meteor.png"];
 break;
 
 case 11:
 sourceImage = [UIImage imageNamed:@"shotgun.png"];
 break;
 
 case 12:
 sourceImage = [UIImage imageNamed:@"thrown-daggers.png"];
 break;
 
 case 13:
 sourceImage = [UIImage imageNamed:@"stone-stone-spear.png"];
 break;
 
 case 14:
 sourceImage = [UIImage imageNamed:@"bomb-arrow.png"];
 break;
 
 case 15:
 sourceImage = [UIImage imageNamed:@"flamethrower.png"];
 break;
 
 case 16:
 sourceImage = [UIImage imageNamed:@"katana.png"];
 break;
 
 case 17:
 sourceImage = [UIImage imageNamed:@"scarecrow.png"];
 break;
 
 case 18:
 sourceImage = [UIImage imageNamed:@"revolver.png"];
 break;
 
 case 19:
 sourceImage = [UIImage imageNamed:@"phoenix.png"];
 break;
 
 case 20:
 sourceImage = [UIImage imageNamed:@"rifle.png"];
 break;
 }
 }
 
 [cinematicObject setImage:[UIImage imageWithCGImage:sourceImage.CGImage
 scale:1.0 orientation: UIImageOrientationUpMirrored]];
 }
 
 -(void)countUp {
 timerValue++;
 
 if (timerValue == 5) {
 [self beginCinematicMode];
 }
 
 if (timerValue == 10) {
 [self endCinematicMode];
 timerValue = 0;
 }
 }
 */

-(IBAction)buttonPlaceholder {
    //plays the sound even when the button doesn't have a function yet
    [self buttonSound];
}

-(void)buttonSound {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"CLICK07" ofType:@"wav"];
    buttonSound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    buttonSound.volume = 0.5;
    [buttonSound play];
}

-(void)endAnimation {
    animating = false;
}

-(void)startupAnimations {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    bannerLabel.alpha = 1;
    bannerLabel.transform = CGAffineTransformMakeTranslation(0, 0);
    
    supremacyView.transform = CGAffineTransformMakeTranslation(0, 0);
    rushView.transform = CGAffineTransformMakeTranslation(0, 0);
    aboutView.transform = CGAffineTransformMakeTranslation(0, 0);
    backView.transform = CGAffineTransformMakeTranslation(0, 0);
    beginView.transform = CGAffineTransformMakeTranslation(0, 0);
    supremacyView.alpha = 1;
    rushView.alpha = 1;
    aboutView.alpha = 1;
    
    bannerLabel.transform = CGAffineTransformMakeTranslation(0, 0);
    bannerLabel.alpha = 1;
    
    [UIView commitAnimations];
}

-(void)showError {
    errorLabel.text = [NSString stringWithFormat:@"Unavailable"];
    errorText.text = [NSString stringWithFormat:@"This area is currently unavailable, come back later!"];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    dimView.alpha = 0.2;
    
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationDelay:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    errorView.alpha = 1;
    
    [UIView commitAnimations];
}

-(IBAction)dismissError {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        errorView.alpha = 0;
        
        [UIView commitAnimations];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationDelay:0.5];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        dimView.alpha = 0;
        
        [UIView commitAnimations];
        [self performSelector:@selector(endAnimation) withObject:self afterDelay:1];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //cinematicTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countUp) userInfo:nil repeats:YES];
    
    animating = false;
    buttonRadius = 4;
    animationSpeed = 0.25;
    currentMenu = 1;
    
    backView.alpha = 0;
    beginView.alpha = 0;
    
    //set initial positions of interface before animating in
    bannerLabel.alpha = 0;
    bannerLabel.transform = CGAffineTransformMakeTranslation(0, -60);
    
    supremacyView.transform = CGAffineTransformMakeTranslation(-200, 0);
    rushView.transform = CGAffineTransformMakeTranslation(-200, 0);
    aboutView.transform = CGAffineTransformMakeTranslation(-200, 0);
    backView.transform = CGAffineTransformMakeTranslation(-200, 0);
    beginView.transform = CGAffineTransformMakeTranslation(-200, 0);
    supremacyView.alpha = 0;
    rushView.alpha = 0;
    aboutView.alpha = 0;
    
    playButton.layer.cornerRadius = buttonRadius;
    playButton.clipsToBounds = YES;
    aboutButton.layer.cornerRadius = buttonRadius;
    aboutButton.clipsToBounds = YES;
    backButton.layer.cornerRadius = buttonRadius;
    backButton.clipsToBounds = YES;
    
    supremacyView.layer.cornerRadius = buttonRadius;
    rushView.layer.cornerRadius = buttonRadius;
    aboutView.layer.cornerRadius = buttonRadius;
    backView.layer.cornerRadius = buttonRadius;
    beginView.layer.cornerRadius = buttonRadius;
    errorView.layer.cornerRadius = buttonRadius;
    
    [self performSelector:@selector(startupAnimations) withObject:self afterDelay:animationSpeed];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end