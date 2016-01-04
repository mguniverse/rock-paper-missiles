//
//  About_iPhone.m
//  Rock Paper Missiles
//
//  Created by Danny Perski on 5/23/15.
//  Copyright (c) 2015 Danny Perski. All rights reserved.
//

#import "About_iPhone.h"

@interface About_iPhone ()

@end

@implementation About_iPhone

-(void)buttonSound {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"CLICK07" ofType:@"wav"];
    buttonSound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    buttonSound.volume = 0.5;
    [buttonSound play];
}

-(void)startupAnimations {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    bannerLabel.alpha = 1;
    bannerLabel.transform = CGAffineTransformMakeTranslation(0, 0);
    backButton.alpha = 1;
    backButton.transform = CGAffineTransformMakeTranslation(0, 0);
    aboutView.alpha = 1;
    aboutView.transform = CGAffineTransformMakeTranslation(0, 0);
    
    [UIView commitAnimations];
}

-(IBAction)mainMenu {
    [self buttonSound];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    backButton.alpha = 0;
    backButton.transform = CGAffineTransformMakeTranslation(0, 60);
    bannerLabel.alpha = 0;
    bannerLabel.transform = CGAffineTransformMakeTranslation(0, 60);
    
    aboutView.transform = CGAffineTransformMakeTranslation(200, 0);
    aboutView.alpha = 0;
    
    [UIView commitAnimations];
    
    [self performSelector:@selector(initiateMainMenuSegue) withObject:self afterDelay:animationSpeed                                                                                                                                                                                                              ];
    
    //you're welcome <3
}

-(void)initiateMainMenuSegue {
    [self performSegueWithIdentifier: @"Menu" sender: self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    backButton.alpha = 0;
    aboutView.alpha = 0;
    bannerLabel.alpha = 0;
    aboutView.transform = CGAffineTransformMakeTranslation(200, 0);
    backButton.transform = CGAffineTransformMakeTranslation(0, -60);
    bannerLabel.transform = CGAffineTransformMakeTranslation(0, -60);
    
    buttonRadius = 4;
    animationSpeed = 0.25;
    aboutView.layer.cornerRadius = buttonRadius;
    [self performSelector:@selector(startupAnimations) withObject:self afterDelay:animationSpeed];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
