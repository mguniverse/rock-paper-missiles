//
//  Supremacy_iPhone.m
//  Rock Paper Missiles
//
//  Created by Danny Perski on 5/23/15.
//  Copyright (c) 2015 Danny Perski. All rights reserved.
//

#import "Supremacy_iPhone.h"

@interface Supremacy_iPhone ()

@end

@implementation Supremacy_iPhone

-(IBAction)supremacy {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        if (currentMenu == 1) {
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

-(IBAction)startGame {
    [self buttonSound];
    
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

-(void)initiateSupremacySegue {
    [self performSegueWithIdentifier: @"Supremacy" sender: self];
}

-(IBAction)mainMenu {
    [self buttonSound];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    comboBar.alpha = 0;
    endView.alpha = 0;
    dimView.alpha = 0;
    
    active1.alpha = 0;
    active1.transform = CGAffineTransformMakeTranslation(-200, 0);
    active2.alpha = 0;
    active2.transform = CGAffineTransformMakeTranslation(-200, 0);
    active3.alpha = 0;
    active3.transform = CGAffineTransformMakeTranslation(-200, 0);
    opponent1.alpha = 0;
    opponent1.transform = CGAffineTransformMakeTranslation(-200, 0);
    
    empty1.alpha = 0;
    empty1.transform = CGAffineTransformMakeTranslation(-200, 0);
    empty2.alpha = 0;
    empty2.transform = CGAffineTransformMakeTranslation(-200, 0);
    empty3.alpha = 0;
    empty3.transform = CGAffineTransformMakeTranslation(-200, 0);
    empty4.alpha = 0;
    empty4.transform = CGAffineTransformMakeTranslation(-200, 0);
    
    menuButton.alpha = 0;
    menuButton.transform = CGAffineTransformMakeTranslation(0, 60);
    shuffleButton.alpha = 0;
    shuffleButton.transform = CGAffineTransformMakeTranslation(0, 60);
    
    healthLabel.transform = CGAffineTransformMakeTranslation(0, 60);
    healthLabel.alpha = 0;
    
    [UIView commitAnimations];
    
    [self performSelector:@selector(offsetMainMenuElements) withObject:self afterDelay:animationSpeed];
    
    //you're welcome <3
}

-(void)offsetMainMenuElements {
    //offset text
    healthLabel.transform = CGAffineTransformMakeTranslation(0, -60);
    healthLabel.text = [NSString stringWithFormat:@"Rock Paper Missiles"];
    
    [self endMainMenuOffset];
}

-(void)endMainMenuOffset {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    bannerLabel.transform = CGAffineTransformMakeTranslation(0, 0);
    bannerLabel.alpha = 1;
    
    [UIView commitAnimations];
    
    [self performSelector:@selector(initiateMainMenuSegue) withObject:self afterDelay:animationSpeed                                                                                                                                                                                                              ];
    
}

-(void)initiateMainMenuSegue {
    [self performSegueWithIdentifier: @"Menu" sender: self];
}


-(IBAction)pushActive1 {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        if (activeWeapon1 == 1) {
            stone = true;
        }
        else if (activeWeapon1 == 2) {
            distraction = true;
        }
        else if (activeWeapon1 == 3) {
            blade = true;
        }
        else if (activeWeapon1 == 4) {
            explosive = true;
        }
        else if (activeWeapon1 == 5) {
            mythical = true;
        }
        else if (activeWeapon1 == 6) {
            flame = true;
        }
        else if (activeWeapon1 == 7) {
            distraction = true;
        }
        else if (activeWeapon1 == 8) {
            explosive = true;
        }
        else if (activeWeapon1 == 9) {
            flame = true;
        }
        else if (activeWeapon1 == 10) {
            mythical = true;
        }
        else if (activeWeapon1 == 11) {
            stone = true;
        }
        else if (activeWeapon1 == 12) {
            firearm = true;
        }
        else if (activeWeapon1 == 13) {
            blade = true;
        }
        else if (activeWeapon1 == 14) {
            stone = true;
        }
        else if (activeWeapon1 == 15) {
            explosive = true;
        }
        else if (activeWeapon1 == 16) {
            flame = true;
        }
        else if (activeWeapon1 == 17) {
            blade = true;
        }
        else if (activeWeapon1 == 18) {
            distraction = true;
        }
        else if (activeWeapon1 == 19) {
            firearm = true;
        }
        else if (activeWeapon1 == 20) {
            mythical = true;
        }
        else if (activeWeapon1 == 21) {
            firearm = true;
        }
        else if (activeWeapon1 == 22) {
            distraction = true;
        }
        else if (activeWeapon1 == 23) {
            flame = true;
        }
        else if (activeWeapon1 == 24) {
            blade = true;
        }
        else if (activeWeapon1 == 25) {
            mythical = true;
        }
        else if (activeWeapon1 == 26) {
            stone = true;
        }
        else if (activeWeapon1 == 27) {
            explosive = true;
        }
        else if (activeWeapon1 == 28) {
            firearm = true;
        }
        
        [self checkResults];
        
        lastSelection = 1;
        
        if (results == 0 && opponentDurability <= 0) {
            opponentWeapon1 = activeWeapon1;
            opponentDurability = arc4random()%3;
            newOpponent = true;
        }
        else {
            opponentDurability--;
            //animate the opponent view to indicate shiled break
            CABasicAnimation *animation =
            [CABasicAnimation animationWithKeyPath:@"position"];
            [animation setDuration:0.05];
            [animation setRepeatCount:4];
            [animation setAutoreverses:YES];
            [animation setFromValue:[NSValue valueWithCGPoint:
                                     CGPointMake([opponent1 center].x - 20.0f, [opponent1 center].y)]];
            [animation setToValue:[NSValue valueWithCGPoint:
                                   CGPointMake([opponent1 center].x + 20.0f, [opponent1 center].y)]];
            [[opponent1 layer] addAnimation:animation forKey:@"position"];
        }
        
        do {
            //faun wrote this
            activeWeapon1 = 1 + (arc4random()%28);
        } while ((activeWeapon1 == activeWeapon2) || (activeWeapon1 == activeWeapon3) || (activeWeapon1 == opponentWeapon1));
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:animationSpeed];
        active1.alpha = 0;
        [UIView commitAnimations];
        
        //now that you've made a move, you may shuffle once
        if (shuffleCooldown > 0) {
            shuffleCooldown--;
        }
        
        [self endMoveAnimation];
    }
}

-(IBAction)pushActive2 {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        if (activeWeapon2 == 1) {
            stone = true;
        }
        else if (activeWeapon2 == 2) {
            distraction = true;
        }
        else if (activeWeapon2 == 3) {
            blade = true;
        }
        else if (activeWeapon2 == 4) {
            explosive = true;
        }
        else if (activeWeapon2 == 5) {
            mythical = true;
        }
        else if (activeWeapon2 == 6) {
            flame = true;
        }
        else if (activeWeapon2 == 7) {
            distraction = true;
        }
        else if (activeWeapon2 == 8) {
            explosive = true;
        }
        else if (activeWeapon2 == 9) {
            flame = true;
        }
        else if (activeWeapon2 == 10) {
            mythical = true;
        }
        else if (activeWeapon2 == 11) {
            stone = true;
        }
        else if (activeWeapon2 == 12) {
            firearm = true;
        }
        else if (activeWeapon2 == 13) {
            blade = true;
        }
        else if (activeWeapon2 == 14) {
            stone = true;
        }
        else if (activeWeapon2 == 15) {
            explosive = true;
        }
        else if (activeWeapon2 == 16) {
            flame = true;
        }
        else if (activeWeapon2 == 17) {
            blade = true;
        }
        else if (activeWeapon2 == 18) {
            distraction = true;
        }
        else if (activeWeapon2 == 19) {
            firearm = true;
        }
        else if (activeWeapon2 == 20) {
            mythical = true;
        }
        else if (activeWeapon2 == 21) {
            firearm = true;
        }
        else if (activeWeapon2 == 22) {
            distraction = true;
        }
        else if (activeWeapon2 == 23) {
            flame = true;
        }
        else if (activeWeapon2 == 24) {
            blade = true;
        }
        else if (activeWeapon2 == 25) {
            mythical = true;
        }
        else if (activeWeapon2 == 26) {
            stone = true;
        }
        else if (activeWeapon2 == 27) {
            explosive = true;
        }
        else if (activeWeapon2 == 28) {
            firearm = true;
        }
        
        [self checkResults];
        
        lastSelection = 2;
        
        if (results == 0 && opponentDurability <= 0) {
            opponentWeapon1 = activeWeapon2;
            opponentDurability = arc4random()%3;
            newOpponent = true;
        }
        else {
            opponentDurability--;
            //animate the opponent view to indicate shiled break
            CABasicAnimation *animation =
            [CABasicAnimation animationWithKeyPath:@"position"];
            [animation setDuration:0.05];
            [animation setRepeatCount:4];
            [animation setAutoreverses:YES];
            [animation setFromValue:[NSValue valueWithCGPoint:
                                     CGPointMake([opponent1 center].x - 20.0f, [opponent1 center].y)]];
            [animation setToValue:[NSValue valueWithCGPoint:
                                   CGPointMake([opponent1 center].x + 20.0f, [opponent1 center].y)]];
            [[opponent1 layer] addAnimation:animation forKey:@"position"];
        }
        
        do {
            //faun wrote this
            activeWeapon2 = 1 + (arc4random()%28);
        } while ((activeWeapon2 == activeWeapon1) || (activeWeapon2 == activeWeapon3) || (activeWeapon2 == opponentWeapon1));
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:animationSpeed];
        active2.alpha = 0;
        [UIView commitAnimations];
        
        //now that you've made a move, you may shuffle once
        if (shuffleCooldown > 0) {
            shuffleCooldown--;
        }
        
        [self endMoveAnimation];
    }
}

-(IBAction)pushActive3 {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        if (activeWeapon3 == 1) {
            stone = true;
        }
        else if (activeWeapon3 == 2) {
            distraction = true;
        }
        else if (activeWeapon3 == 3) {
            blade = true;
        }
        else if (activeWeapon3 == 4) {
            explosive = true;
        }
        else if (activeWeapon3 == 5) {
            mythical = true;
        }
        else if (activeWeapon3 == 6) {
            flame = true;
        }
        else if (activeWeapon3 == 7) {
            distraction = true;
        }
        else if (activeWeapon3 == 8) {
            explosive = true;
        }
        else if (activeWeapon3 == 9) {
            flame = true;
        }
        else if (activeWeapon3 == 10) {
            mythical = true;
        }
        else if (activeWeapon3 == 11) {
            stone = true;
        }
        else if (activeWeapon3 == 12) {
            firearm = true;
        }
        else if (activeWeapon3 == 13) {
            blade = true;
        }
        else if (activeWeapon3 == 14) {
            stone = true;
        }
        else if (activeWeapon3 == 15) {
            explosive = true;
        }
        else if (activeWeapon3 == 16) {
            flame = true;
        }
        else if (activeWeapon3 == 17) {
            blade = true;
        }
        else if (activeWeapon3 == 18) {
            distraction = true;
        }
        else if (activeWeapon3 == 19) {
            firearm = true;
        }
        else if (activeWeapon3 == 20) {
            mythical = true;
        }
        else if (activeWeapon3 == 21) {
            firearm = true;
        }
        else if (activeWeapon3 == 22) {
            distraction = true;
        }
        else if (activeWeapon3 == 23) {
            flame = true;
        }
        else if (activeWeapon3 == 24) {
            blade = true;
        }
        else if (activeWeapon3 == 25) {
            mythical = true;
        }
        else if (activeWeapon3 == 26) {
            stone = true;
        }
        else if (activeWeapon3 == 27) {
            explosive = true;
        }
        else if (activeWeapon3 == 28) {
            firearm = true;
        }
        
        [self checkResults];
        
        lastSelection = 3;
        
        if (results == 0 && opponentDurability <= 0) {
            opponentWeapon1 = activeWeapon3;
            opponentDurability = arc4random()%3;
            newOpponent = true;
        }
        else {
            opponentDurability--;
            //animate the opponent view to indicate shiled break
            CABasicAnimation *animation =
            [CABasicAnimation animationWithKeyPath:@"position"];
            [animation setDuration:0.05];
            [animation setRepeatCount:4];
            [animation setAutoreverses:YES];
            [animation setFromValue:[NSValue valueWithCGPoint:
                                     CGPointMake([opponent1 center].x - 20.0f, [opponent1 center].y)]];
            [animation setToValue:[NSValue valueWithCGPoint:
                                   CGPointMake([opponent1 center].x + 20.0f, [opponent1 center].y)]];
            [[opponent1 layer] addAnimation:animation forKey:@"position"];
        }
        
        do {
            //faun wrote this
            activeWeapon3 = 1 + (arc4random()%28);
        } while ((activeWeapon3 == activeWeapon2) || (activeWeapon3 == activeWeapon1) || (activeWeapon3 == opponentWeapon1));
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:animationSpeed];
        active3.alpha = 0;
        [UIView commitAnimations];
        
        //now that you've made a move, you may shuffle once
        if (shuffleCooldown > 0) {
            shuffleCooldown--;
        }
        
        [self endMoveAnimation];
    }
}

-(void)offsetOpponent {
    opponent1.transform = CGAffineTransformMakeTranslation(-200, 0);
}

-(void)endMoveAnimation {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:animationSpeed];
    
    if (results == 0 && newOpponent == true) {
        opponent1.alpha = 0;
        opponent1.transform = CGAffineTransformMakeTranslation(200, 0);
    }
    
    [UIView commitAnimations];
    
    if (results == 0 && newOpponent == true) {
        [self performSelector:@selector(offsetOpponent) withObject:self afterDelay:animationSpeed];
    }
    [self performSelector:@selector(loadImages) withObject:self afterDelay:animationSpeed];
    [self performSelector:@selector(resetWeaponPosition) withObject:self afterDelay:animationSpeed];
    [self performSelector:@selector(endAnimation) withObject:self afterDelay:animationSpeed];
}

-(void)resetWeaponPosition {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:animationSpeed];
    active1.alpha = 1;
    active2.alpha = 1;
    active3.alpha = 1;
    
    if (newOpponent == true) {
        opponent1.alpha = 1;
        opponent1.transform = CGAffineTransformMakeTranslation(0, 0);
    }
    
    active1.transform = CGAffineTransformMakeTranslation(0, 0);
    active2.transform = CGAffineTransformMakeTranslation(0, 0);
    active3.transform = CGAffineTransformMakeTranslation(0, 0);
    [UIView commitAnimations];
    
    newOpponent = false;
}

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

-(void)randomizeAllWeapons {
    //in theory, this function randomizes all cards in consecutive order
    activeWeapon1 = 1 + (arc4random()%28);
    do {
        //faun wrote this
        activeWeapon2 = 1 + (arc4random()%28);
    } while (activeWeapon1 == activeWeapon2);
    do {
        //faun wrote this
        activeWeapon3 = 1 + (arc4random()%28);
    } while ((activeWeapon3 == activeWeapon1) || (activeWeapon3 == activeWeapon2));
    do {
        //faun wrote this
        opponentWeapon1 = 1 + (arc4random()%28);
    } while ((opponentWeapon1 == activeWeapon1) || (opponentWeapon1 == activeWeapon2) || (opponentWeapon1 == activeWeapon3));
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

-(void)checkEnemyType {
    //check enemy type
    if (opponentWeapon1 == 1) {
        stoneTypeEnemy = true;
    }
    else if (opponentWeapon1 == 2) {
        distractionTypeEnemy = true;
    }
    else if (opponentWeapon1 == 3) {
        bladeTypeEnemy = true;
    }
    else if (opponentWeapon1 == 4) {
        explosiveTypeEnemy = true;
    }
    else if (opponentWeapon1 == 5) {
        mythicalTypeEnemy = true;
    }
    else if (opponentWeapon1 == 6) {
        flameTypeEnemy = true;
    }
    else if (opponentWeapon1 == 7) {
        distractionTypeEnemy = true;
    }
    else if (opponentWeapon1 == 8) {
        explosiveTypeEnemy = true;
    }
    else if (opponentWeapon1 == 9) {
        flameTypeEnemy = true;
    }
    else if (opponentWeapon1 == 10) {
        mythicalTypeEnemy = true;
    }
    else if (opponentWeapon1 == 11) {
        stoneTypeEnemy = true;
    }
    else if (opponentWeapon1 == 12) {
        firearmTypeEnemy = true;
    }
    else if (opponentWeapon1 == 13) {
        bladeTypeEnemy = true;
    }
    else if (opponentWeapon1 == 14) {
        stoneTypeEnemy = true;
    }
    else if (opponentWeapon1 == 15) {
        explosiveTypeEnemy = true;
    }
    else if (opponentWeapon1 == 16) {
        flameTypeEnemy = true;
    }
    else if (opponentWeapon1 == 17) {
        bladeTypeEnemy = true;
    }
    else if (opponentWeapon1 == 18) {
        distractionTypeEnemy = true;
    }
    else if (opponentWeapon1 == 19) {
        firearmTypeEnemy = true;
    }
    else if (opponentWeapon1 == 20) {
        mythicalTypeEnemy = true;
    }
    else if (opponentWeapon1 == 21) {
        firearmTypeEnemy = true;
    }
    else if (opponentWeapon1 == 22) {
        distractionTypeEnemy = true;
    }
    else if (opponentWeapon1 == 23) {
        flameTypeEnemy = true;
    }
    else if (opponentWeapon1 == 24) {
        bladeTypeEnemy = true;
    }
    else if (opponentWeapon1 == 25) {
        mythicalTypeEnemy = true;
    }
    else if (opponentWeapon1 == 26) {
        stoneTypeEnemy = true;
    }
    else if (opponentWeapon1 == 27) {
        explosiveTypeEnemy = true;
    }
    else if (opponentWeapon1 == 28) {
        firearmTypeEnemy = true;
    }
    
    if (stoneTypeEnemy == true) {
        opponentInfoText.text = [NSString stringWithFormat:@"Weak to distraction, explosive, and firearm weapons."];
    }
    if (distractionTypeEnemy == true) {
        opponentInfoText.text = [NSString stringWithFormat:@"Weak to blade, flame, and firearm weapons."];
    }
    if (bladeTypeEnemy == true) {
        opponentInfoText.text = [NSString stringWithFormat:@"Weak to stone, flame, and firearm weapons."];
    }
    if (explosiveTypeEnemy == true) {
        opponentInfoText.text = [NSString stringWithFormat:@"Weak to blade, distraction, and mythical weapons."];
    }
    if (mythicalTypeEnemy == true) {
        opponentInfoText.text = [NSString stringWithFormat:@"Weak to stone, blade, and distraction weapons."];
    }
    if (flameTypeEnemy == true) {
        opponentInfoText.text = [NSString stringWithFormat:@"Weak to stone, explosive, and mythical weapons."];
    }
    if (firearmTypeEnemy == true) {
        opponentInfoText.text = [NSString stringWithFormat:@"Weak to explosive, mythical, and flame weapons."];
    }
}

-(void)checkResults {
    [self checkEnemyType];
    
    //check results
    if (stone == true) {
        if (stoneTypeEnemy == true) {
            results = 2;
        }
        else if (distractionTypeEnemy == true) {
            results = 1;
        }
        else if (bladeTypeEnemy == true) {
            results = 0;
        }
        else if (explosiveTypeEnemy == true) {
            results = 1;
        }
        else if (mythicalTypeEnemy == true) {
            results = 0;
        }
        else if (flameTypeEnemy == true) {
            results = 0;
        }
        else if (firearmTypeEnemy == true) {
            results = 1;
        }
    }
    
    else if (distraction == true) {
        if (stoneTypeEnemy == true) {
            results = 0;
        }
        else if (distractionTypeEnemy == true) {
            results = 2;
        }
        else if (bladeTypeEnemy == true) {
            results = 1;
        }
        else if (explosiveTypeEnemy == true) {
            results = 0;
        }
        else if (mythicalTypeEnemy == true) {
            results = 0;
        }
        else if (flameTypeEnemy == true) {
            results = 1;
        }
        else if (firearmTypeEnemy == true) {
            results = 1;
        }
    }
    
    else if (blade == true) {
        if (stoneTypeEnemy == true) {
            results = 1;
        }
        else if (distractionTypeEnemy == true) {
            results = 0;
        }
        else if (bladeTypeEnemy == true) {
            results = 2;
        }
        else if (explosiveTypeEnemy == true) {
            results = 0;
        }
        else if (mythicalTypeEnemy == true) {
            results = 0;
        }
        else if (flameTypeEnemy == true) {
            results = 1;
        }
        else if (firearmTypeEnemy == true) {
            results = 1;
        }
    }
    
    else if (explosive == true) {
        if (stoneTypeEnemy == true) {
            results = 0;
        }
        else if (distractionTypeEnemy == true) {
            results = 1;
        }
        else if (bladeTypeEnemy == true) {
            results = 1;
        }
        else if (explosiveTypeEnemy == true) {
            results = 2;
        }
        else if (mythicalTypeEnemy == true) {
            results = 1;
        }
        else if (flameTypeEnemy == true) {
            results = 0;
        }
        else if (firearmTypeEnemy == true) {
            results = 0;
        }
    }
    
    else if (mythical == true) {
        if (stoneTypeEnemy == true) {
            results = 1;
        }
        else if (distractionTypeEnemy == true) {
            results = 1;
        }
        else if (bladeTypeEnemy == true) {
            results = 1;
        }
        else if (explosiveTypeEnemy == true) {
            results = 0;
        }
        else if (mythicalTypeEnemy == true) {
            results = 2;
        }
        else if (flameTypeEnemy == true) {
            results = 0;
        }
        else if (firearmTypeEnemy == true) {
            results = 0;
        }
    }
    
    else if (flame == true) {
        if (stoneTypeEnemy == true) {
            results = 1;
        }
        else if (distractionTypeEnemy == true) {
            results = 0;
        }
        else if (bladeTypeEnemy == true) {
            results = 0;
        }
        else if (explosiveTypeEnemy == true) {
            results = 1;
        }
        else if (mythicalTypeEnemy == true) {
            results = 1;
        }
        else if (flameTypeEnemy == true) {
            results = 2;
        }
        else if (firearmTypeEnemy == true) {
            results = 0;
        }
    }
    
    else if (firearm == true) {
        if (stoneTypeEnemy == true) {
            results = 0;
        }
        else if (distractionTypeEnemy == true) {
            results = 0;
        }
        else if (bladeTypeEnemy == true) {
            results = 0;
        }
        else if (explosiveTypeEnemy == true) {
            results = 1;
        }
        else if (mythicalTypeEnemy == true) {
            results = 1;
        }
        else if (flameTypeEnemy == true) {
            results = 1;
        }
        else if (firearmTypeEnemy == true) {
            results = 2;
        }
    }
    
    if (results == 2) {
        if (combo != 5) {
            health--;
        }
        combo = 0;
        score = score + bonus;
        bonus = 0;
        if (trainingProgress == 2 && training == true) {
            trainingView.transform = CGAffineTransformMakeTranslation(0, 0);
            trainingLabel.text = [NSString stringWithFormat:@"Shield"];
            trainingText.text = [NSString stringWithFormat:@"You can take damage when your combo meter is completely filled."];
            [self performSelector:@selector(showTraining) withObject:self afterDelay:animationSpeed*2];
        }
    }
    if (results == 1 && health > 0) {
        if (combo != 5) {
            health--;
        }
        combo = 0;
        score = score + bonus;
        bonus = 0;
        if (trainingProgress == 2 && training == true) {
            trainingView.transform = CGAffineTransformMakeTranslation(0, 0);
            trainingLabel.text = [NSString stringWithFormat:@"Shield"];
            trainingText.text = [NSString stringWithFormat:@"You can take damage when your combo meter is completely filled."];
            [self performSelector:@selector(showTraining) withObject:self afterDelay:animationSpeed*2];
        }
    }
    if (results == 0 && combo != 5) {
        combo = combo + 1;
        if (trainingProgress == 4 && training == true) {
            trainingView.transform = CGAffineTransformMakeTranslation(0, 0);
            trainingLabel.text = [NSString stringWithFormat:@"Combo meter"];
            trainingText.text = [NSString stringWithFormat:@"When you counter opponent cards, your combo meter grows."];
            [self performSelector:@selector(showTraining) withObject:self afterDelay:animationSpeed*2];
        }
    }
    
    [comboBar setProgress:combo/5 animated:YES];
    
    if (combo == 5) {
        bonus++;
    }
    
    if (health == 0) {
        [self gameOver];
    }
    
    //reset weapon booleans so they don't stack
    [self resetWeapons];
}

-(void)gameOver {
    endText.text = [NSString stringWithFormat:@"You were defeated by the opponent. Your final score was %i.", score];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    dimView.alpha = 0.2;
    
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationDelay:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    endView.alpha = 1;
    
    [UIView commitAnimations];
}

-(IBAction)toggleCardInfo {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        if (currentCardView == 1) {
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            active1.transform = CGAffineTransformMakeTranslation(-200, 0);
            active2.transform = CGAffineTransformMakeTranslation(-200, 0);
            active3.transform = CGAffineTransformMakeTranslation(-200, 0);
            active1.alpha = 0;
            active2.alpha = 0;
            active3.alpha = 0;
            
            [UIView commitAnimations];
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationDelay:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            CGRect newFrame = opponent1.frame;
            newFrame.size = CGSizeMake(280.0, 224.0);
            opponent1.frame = newFrame;
            
            opponentInfoLabel.alpha = 1;
            opponentInfoText.alpha = 1;
            
            [UIView commitAnimations];
            
            currentCardView++;
        }
        else {
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            CGRect newFrame = opponent1.frame;
            newFrame.size = CGSizeMake(280.0, 128.0);
            opponent1.frame = newFrame;
            
            opponentInfoLabel.alpha = 0;
            opponentInfoText.alpha = 0;
            
            [UIView commitAnimations];
            
            active1.transform = CGAffineTransformMakeTranslation(200, 0);
            active2.transform = CGAffineTransformMakeTranslation(200, 0);
            active3.transform = CGAffineTransformMakeTranslation(200, 0);
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationDelay:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            active1.transform = CGAffineTransformMakeTranslation(0, 0);
            active2.transform = CGAffineTransformMakeTranslation(0, 0);
            active3.transform = CGAffineTransformMakeTranslation(0, 0);
            active1.alpha = 1;
            active2.alpha = 1;
            active3.alpha = 1;
            
            [UIView commitAnimations];
            
            currentCardView--;
        }
        
        [self performSelector:@selector(endAnimation) withObject:self afterDelay:animationSpeed];
    }
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

-(IBAction)dismissTraining {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        trainingView.alpha = 0;
        
        [UIView commitAnimations];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationDelay:0.5];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        dimView.alpha = 0;
        
        [UIView commitAnimations];
        [self performSelector:@selector(endAnimation) withObject:self afterDelay:1];
    }
    
    NSLog(@"%i", trainingProgress);
}

-(IBAction)retry {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        //shuffles the weapons when you retry
        shuffleCooldown = 4;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        active1.transform = CGAffineTransformMakeTranslation(0, 200);
        active2.transform = CGAffineTransformMakeTranslation(0, 200);
        active3.transform = CGAffineTransformMakeTranslation(0, 200);
        
        active1.alpha = 0;
        active2.alpha = 0;
        active3.alpha = 0;
        
        [UIView commitAnimations];
        
        [self performSelector:@selector(endShuffle) withObject:self afterDelay:animationSpeed];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        endView.alpha = 0;
        
        [UIView commitAnimations];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationDelay:0.5];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        dimView.alpha = 0;
        
        [UIView commitAnimations];
        
        shuffleCooldown = 0;
        health = 1;
        combo = 0;
        score = 0;
        [comboBar setProgress:combo/5 animated:YES];
        if (combo == 5) {
            healthLabel.text = [NSString stringWithFormat:@"HP %i (+1)", health];
        }
        else {
            healthLabel.text = [NSString stringWithFormat:@"HP %i", health];
        }
        
        [self performSelector:@selector(endAnimation) withObject:self afterDelay:1];
    }
}

-(void)resetWeapons {
    stone = false;
    distraction = false;
    blade = false;
    explosive = false;
    mythical = false;
    flame = false;
    firearm = false;
    
    stoneTypeEnemy = false;
    distractionTypeEnemy = false;
    bladeTypeEnemy = false;
    explosiveTypeEnemy = false;
    mythicalTypeEnemy = false;
    flameTypeEnemy = false;
    firearmTypeEnemy = false;
}

-(void)rerollWeapons {
    do {
        //faun wrote this
        activeWeapon1 = 1 + (arc4random()%28);
    } while (activeWeapon1 == opponentWeapon1);
    do {
        //faun wrote this
        activeWeapon2 = 1 + (arc4random()%28);
    } while ((activeWeapon2 == opponentWeapon1 || activeWeapon2 == activeWeapon1));
    do {
        //faun wrote this
        activeWeapon3 = 1 + (arc4random()%28);
    } while ((activeWeapon2 == opponentWeapon1 || activeWeapon3 == activeWeapon1) || (activeWeapon3 == activeWeapon2));
}

-(IBAction)shuffleWeapons {
    if (animating == false) {
        animating = true;
        [self buttonSound];
        
        if (shuffleCooldown == 0) {
            shuffleCooldown = 4;
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:animationSpeed];
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            
            active1.transform = CGAffineTransformMakeTranslation(0, 200);
            active2.transform = CGAffineTransformMakeTranslation(0, 200);
            active3.transform = CGAffineTransformMakeTranslation(0, 200);
            
            active1.alpha = 0;
            active2.alpha = 0;
            active3.alpha = 0;
            
            [UIView commitAnimations];
            
            [self performSelector:@selector(endShuffle) withObject:self afterDelay:animationSpeed];
        }
        else {
            [self showError];
        }
        [self performSelector:@selector(endAnimation) withObject:self afterDelay:animationSpeed];
    }
}

-(void)showError {
    errorLabel.text = [NSString stringWithFormat:@"Cooldown"];
    errorText.text = [NSString stringWithFormat:@"You must wait %i more turn(s) to shuffle new weapons.", shuffleCooldown];
    
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

-(void)showTraining {
    trainingProgress--;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    dimView.alpha = 0.2;
    
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationDelay:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    trainingView.alpha = 1;
    
    [UIView commitAnimations];
}

-(void)endShuffle {
    active1.transform = CGAffineTransformMakeTranslation(0, 0);
    active2.transform = CGAffineTransformMakeTranslation(0, 0);
    active3.transform = CGAffineTransformMakeTranslation(0, 0);
    
    [self rerollWeapons];
    
    [self loadImages];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    active1.alpha = 1;
    active2.alpha = 1;
    active3.alpha = 1;
    
    [UIView commitAnimations];
    
    if (trainingProgress == 1 && training == true) {
        trainingLabel.text = [NSString stringWithFormat:@"Shuffle"];
        trainingText.text = [NSString stringWithFormat:@"If you don’t have any effective cards, you can shuffle to draw new ones."];
        [self performSelector:@selector(showTraining) withObject:self afterDelay:animationSpeed*2];
    }
}

-(void)loadImages {
    //also gonna load the labels and progress bar
    if (combo == 5) {
        healthLabel.text = [NSString stringWithFormat:@"HP %i (+%i)", health, bonus];
        if (trainingProgress == 3 && training == true) {
            trainingView.transform = CGAffineTransformMakeTranslation(0, 0);
            trainingLabel.text = [NSString stringWithFormat:@"Earning points"];
            trainingText.text = [NSString stringWithFormat:@"If your combo meter is filled completely, you start earning points."];
            [self performSelector:@selector(showTraining) withObject:self afterDelay:animationSpeed*2];
        }
    }
    else {
        healthLabel.text = [NSString stringWithFormat:@"HP %i", health];
    }
    //load opponent durability indicator
    if (opponentDurability == 0) {
        [durabilityIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"durability-0.png"]]];
    }
    if (opponentDurability == 1) {
        [durabilityIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"durability-1.png"]]];
    }
    if (opponentDurability == 2) {
        [durabilityIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"durability-2.png"]]];
    }
    if (opponentDurability == 3) {
        [durabilityIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"durability-3.png"]]];
    }
    //load active slot 1
    if (activeWeapon1 == 1) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rock-tiny.png"]]];
    }
    else if (activeWeapon1 == 2) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"paper-tiny.png"]]];
    }
    else if (activeWeapon1 == 3) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"scissors-tiny.png"]]];
    }
    else if (activeWeapon1 == 4) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"missiles-tiny.png"]]];
    }
    else if (activeWeapon1 == 5) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"dragon-tiny.png"]]];
    }
    else if (activeWeapon1 == 6) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flaming-arrow-tiny.png"]]];
    }
    else if (activeWeapon1 == 7) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flash-bang-tiny.png"]]];
    }
    else if (activeWeapon1 == 8) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"grenade-tiny.png"]]];
    }
    else if (activeWeapon1 == 9) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"molotov-tiny.png"]]];
    }
    else if (activeWeapon1 == 10) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"hydra-tiny.png"]]];
    }
    else if (activeWeapon1 == 11) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"meteor-tiny.png"]]];
    }
    else if (activeWeapon1 == 12) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"shotgun-tiny.png"]]];
    }
    else if (activeWeapon1 == 13) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"thrown-daggers-tiny.png"]]];
    }
    else if (activeWeapon1 == 14) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"stone-spear-tiny.png"]]];
    }
    else if (activeWeapon1 == 15) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-arrow-tiny.png"]]];
    }
    else if (activeWeapon1 == 16) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flamethrower-tiny.png"]]];
    }
    else if (activeWeapon1 == 17) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"katana-tiny.png"]]];
    }
    else if (activeWeapon1 == 18) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"scarecrow-tiny.png"]]];
    }
    else if (activeWeapon1 == 19) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"revolver-tiny.png"]]];
    }
    else if (activeWeapon1 == 20) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"phoenix-tiny.png"]]];
    }
    else if (activeWeapon1 == 21) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rifle-tiny.png"]]];
    }
    else if (activeWeapon1 == 22) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"firecracker-tiny.png"]]];
    }
    else if (activeWeapon1 == 23) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"hotsauce-tiny.png"]]];
    }
    else if (activeWeapon1 == 24) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"machete-tiny.png"]]];
    }
    else if (activeWeapon1 == 25) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"medusa-tiny.png"]]];
    }
    else if (activeWeapon1 == 26) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"moai-tiny.png"]]];
    }
    else if (activeWeapon1 == 27) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rocket-tiny.png"]]];
    }
    else if (activeWeapon1 == 28) {
        [activeImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"slingshot-tiny.png"]]];
    }
    
    //load active slot 2
    if (activeWeapon2 == 1) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rock-tiny.png"]]];
    }
    else if (activeWeapon2 == 2) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"paper-tiny.png"]]];
    }
    else if (activeWeapon2 == 3) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"scissors-tiny.png"]]];
    }
    else if (activeWeapon2 == 4) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"missiles-tiny.png"]]];
    }
    else if (activeWeapon2 == 5) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"dragon-tiny.png"]]];
    }
    else if (activeWeapon2 == 6) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flaming-arrow-tiny.png"]]];
    }
    else if (activeWeapon2 == 7) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flash-bang-tiny.png"]]];
    }
    else if (activeWeapon2 == 8) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"grenade-tiny.png"]]];
    }
    else if (activeWeapon2 == 9) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"molotov-tiny.png"]]];
    }
    else if (activeWeapon2 == 10) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"hydra-tiny.png"]]];
    }
    else if (activeWeapon2 == 11) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"meteor-tiny.png"]]];
    }
    else if (activeWeapon2 == 12) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"shotgun-tiny.png"]]];
    }
    else if (activeWeapon2 == 13) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"thrown-daggers-tiny.png"]]];
    }
    else if (activeWeapon2 == 14) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"stone-spear-tiny.png"]]];
    }
    else if (activeWeapon2 == 15) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-arrow-tiny.png"]]];
    }
    else if (activeWeapon2 == 16) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flamethrower-tiny.png"]]];
    }
    else if (activeWeapon2 == 17) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"katana-tiny.png"]]];
    }
    else if (activeWeapon2 == 18) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"scarecrow-tiny.png"]]];
    }
    else if (activeWeapon2 == 19) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"revolver-tiny.png"]]];
    }
    else if (activeWeapon2 == 20) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"phoenix-tiny.png"]]];
    }
    else if (activeWeapon2 == 21) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rifle-tiny.png"]]];
    }
    else if (activeWeapon2 == 22) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"firecracker-tiny.png"]]];
    }
    else if (activeWeapon2 == 23) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"hotsauce-tiny.png"]]];
    }
    else if (activeWeapon2 == 24) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"machete-tiny.png"]]];
    }
    else if (activeWeapon2 == 25) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"medusa-tiny.png"]]];
    }
    else if (activeWeapon2 == 26) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"moai-tiny.png"]]];
    }
    else if (activeWeapon2 == 27) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rocket-tiny.png"]]];
    }
    else if (activeWeapon2 == 28) {
        [activeImage2 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"slingshot-tiny.png"]]];
    }
    
    //load active slot 3
    if (activeWeapon3 == 1) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rock-tiny.png"]]];
    }
    else if (activeWeapon3 == 2) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"paper-tiny.png"]]];
    }
    else if (activeWeapon3 == 3) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"scissors-tiny.png"]]];
    }
    else if (activeWeapon3 == 4) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"missiles-tiny.png"]]];
    }
    else if (activeWeapon3 == 5) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"dragon-tiny.png"]]];
    }
    else if (activeWeapon3 == 6) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flaming-arrow-tiny.png"]]];
    }
    else if (activeWeapon3 == 7) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flash-bang-tiny.png"]]];
    }
    else if (activeWeapon3 == 8) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"grenade-tiny.png"]]];
    }
    else if (activeWeapon3 == 9) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"molotov-tiny.png"]]];
    }
    else if (activeWeapon3 == 10) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"hydra-tiny.png"]]];
    }
    else if (activeWeapon3 == 11) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"meteor-tiny.png"]]];
    }
    else if (activeWeapon3 == 12) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"shotgun-tiny.png"]]];
    }
    else if (activeWeapon3 == 13) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"thrown-daggers-tiny.png"]]];
    }
    else if (activeWeapon3 == 14) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"stone-spear-tiny.png"]]];
    }
    else if (activeWeapon3 == 15) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-arrow-tiny.png"]]];
    }
    else if (activeWeapon3 == 16) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flamethrower-tiny.png"]]];
    }
    else if (activeWeapon3 == 17) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"katana-tiny.png"]]];
    }
    else if (activeWeapon3 == 18) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"scarecrow-tiny.png"]]];
    }
    else if (activeWeapon3 == 19) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"revolver-tiny.png"]]];
    }
    else if (activeWeapon3 == 20) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"phoenix-tiny.png"]]];
    }
    else if (activeWeapon3 == 21) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rifle-tiny.png"]]];
    }
    else if (activeWeapon3 == 22) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"firecracker-tiny.png"]]];
    }
    else if (activeWeapon3 == 23) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"hotsauce-tiny.png"]]];
    }
    else if (activeWeapon3 == 24) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"machete-tiny.png"]]];
    }
    else if (activeWeapon3 == 25) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"medusa-tiny.png"]]];
    }
    else if (activeWeapon3 == 26) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"moai-tiny.png"]]];
    }
    else if (activeWeapon3 == 27) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rocket-tiny.png"]]];
    }
    else if (activeWeapon3 == 28) {
        [activeImage3 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"slingshot-tiny.png"]]];
    }
    
    //load opponent slot 1
    if (opponentWeapon1 == 1) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rock-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Rock | Stone"];
    }
    else if (opponentWeapon1 == 2) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"paper-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Paper | Distraction"];
    }
    else if (opponentWeapon1 == 3) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"scissors-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Scissors | Blade"];
    }
    else if (opponentWeapon1 == 4) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"missiles-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Missiles | Explosive"];
    }
    else if (opponentWeapon1 == 5) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"dragon-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Dragon | Mythical"];
    }
    else if (opponentWeapon1 == 6) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flaming-arrow-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Flaming Arrow | Flame"];
    }
    else if (opponentWeapon1 == 7) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flash-bang-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Flashbang | Distraction"];
    }
    else if (opponentWeapon1 == 8) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"grenade-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Grenade | Explosive"];
    }
    else if (opponentWeapon1 == 9) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"molotov-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Molotov | Flame"];
    }
    else if (opponentWeapon1 == 10) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"hydra-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Hydra | Mythical"];
    }
    else if (opponentWeapon1 == 11) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"meteor-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Meteor | Stone"];
    }
    else if (opponentWeapon1 == 12) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"shotgun-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Shotgun | Firearm"];
    }
    else if (opponentWeapon1 == 13) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"thrown-daggers-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Kunai | Blade"];
    }
    else if (opponentWeapon1 == 14) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"stone-spear-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Spear | Stone"];
    }
    else if (opponentWeapon1 == 15) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-arrow-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Bomb Arrows | Explosive"];
    }
    else if (opponentWeapon1 == 16) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"flamethrower-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Flamethrower | Flame"];
    }
    else if (opponentWeapon1 == 17) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"katana-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Katana | Blade"];
    }
    else if (opponentWeapon1 == 18) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"scarecrow-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Scarecrow | Distraction"];
    }
    else if (opponentWeapon1 == 19) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"revolver-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Revolver | Firearm"];
    }
    else if (opponentWeapon1 == 20) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"phoenix-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Phoenix | Mythical"];
    }
    else if (opponentWeapon1 == 21) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rifle-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Rifle | Firearm"];
    }
    else if (opponentWeapon1 == 22) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"firecracker-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Firecracker | Distraction"];
    }
    else if (opponentWeapon1 == 23) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"hotsauce-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Hot Sauce | Flame"];
    }
    else if (opponentWeapon1 == 24) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"machete-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Machete | Blade"];
    }
    else if (opponentWeapon1 == 25) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"medusa-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Medusa | Mythical"];
    }
    else if (opponentWeapon1 == 26) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"moai-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Moai | Stone"];
    }
    else if (opponentWeapon1 == 27) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"rocket-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Rocket Launcher | Explosive"];
    }
    else if (opponentWeapon1 == 28) {
        [opponentImage1 setImage:[UIImage imageNamed:[NSString stringWithFormat:@"slingshot-small.png"]]];
        opponentInfoLabel.text = [NSString stringWithFormat:@"Slingshot | Firearm"];
    }
    
    [self checkEnemyType];
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
    
    comboBar.alpha = 1;
    
    active1.alpha = 1;
    active1.transform = CGAffineTransformMakeTranslation(0, 0);
    active2.alpha = 1;
    active2.transform = CGAffineTransformMakeTranslation(0, 0);
    active3.alpha = 1;
    active3.transform = CGAffineTransformMakeTranslation(0, 0);
    opponent1.alpha = 1;
    opponent1.transform = CGAffineTransformMakeTranslation(0, 0);
    
    empty1.alpha = 1;
    empty1.transform = CGAffineTransformMakeTranslation(0, 0);
    empty2.alpha = 1;
    empty2.transform = CGAffineTransformMakeTranslation(0, 0);
    empty3.alpha = 1;
    empty3.transform = CGAffineTransformMakeTranslation(0, 0);
    empty4.alpha = 1;
    empty4.transform = CGAffineTransformMakeTranslation(0, 0);
    
    menuButton.alpha = 1;
    menuButton.transform = CGAffineTransformMakeTranslation(0, 0);
    shuffleButton.alpha = 1;
    shuffleButton.transform = CGAffineTransformMakeTranslation(0, 0);
    
    healthLabel.alpha = 1;
    healthLabel.transform = CGAffineTransformMakeTranslation(0, 0);
    
    [UIView commitAnimations];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    cinematicTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countUp) userInfo:nil repeats:YES];
    
    newDate = [[NSUserDefaults standardUserDefaults]
               stringForKey:@"savedNewDate"];
    currentDate = [[NSUserDefaults standardUserDefaults]
                   stringForKey:@"savedCurrentDate"];
    
    //loads your highest score and displays it in the label
    topScore = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedScore"];
    dailyScore = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedDaily"];
    
    animating = false;
    training = true;
    buttonRadius = 4;
    animationSpeed = 0.25;
    currentMenu = 1;
    health = 1;
    //you may shuffle once at the beginning of the game
    shuffleCooldown = 0;
    trainingProgress = 5;
    currentCardView = 1;
    
    backView.alpha = 0;
    beginView.alpha = 0;
    
    [self randomizeAllWeapons];
    [self loadImages];
    
    //set initial positions of interface before animating in
    comboBar.alpha = 0;
    
    active1.alpha = 0;
    active1.transform = CGAffineTransformMakeTranslation(200, 0);
    active2.alpha = 0;
    active2.transform = CGAffineTransformMakeTranslation(200, 0);
    active3.alpha = 0;
    active3.transform = CGAffineTransformMakeTranslation(200, 0);
    opponent1.alpha = 0;
    opponent1.transform = CGAffineTransformMakeTranslation(200, 0);
    
    empty1.alpha = 0;
    empty1.transform = CGAffineTransformMakeTranslation(200, 0);
    empty2.alpha = 0;
    empty2.transform = CGAffineTransformMakeTranslation(200, 0);
    empty3.alpha = 0;
    empty3.transform = CGAffineTransformMakeTranslation(200, 0);
    empty4.alpha = 0;
    empty4.transform = CGAffineTransformMakeTranslation(200, 0);
    
    menuButton.alpha = 0;
    menuButton.transform = CGAffineTransformMakeTranslation(0, -60);
    shuffleButton.alpha = 0;
    shuffleButton.transform = CGAffineTransformMakeTranslation(0, -60);
    
    healthLabel.alpha = 0;
    healthLabel.transform = CGAffineTransformMakeTranslation(0, -60);
    
    playButton.layer.cornerRadius = buttonRadius;
    playButton.clipsToBounds = YES;
    aboutButton.layer.cornerRadius = buttonRadius;
    aboutButton.clipsToBounds = YES;
    quiverButton.layer.cornerRadius = buttonRadius;
    quiverButton.clipsToBounds = YES;
    moreGamesButton.layer.cornerRadius = buttonRadius;
    moreGamesButton.clipsToBounds = YES;
    backButton.layer.cornerRadius = buttonRadius;
    backButton.clipsToBounds = YES;
    
    endView.clipsToBounds = NO;
    endView.layer.cornerRadius = buttonRadius;
    endView.layer.shadowRadius = buttonRadius;
    endView.layer.shadowColor = [[UIColor blackColor] CGColor];
    endView.layer.shadowOffset = CGSizeMake(0,0);
    endView.layer.shadowOpacity = 0.2;
    endView.layer.masksToBounds = NO;
    endView.layer.rasterizationScale = [UIScreen mainScreen].scale;
    endView.layer.shouldRasterize = YES;
    
    errorView.clipsToBounds = NO;
    errorView.layer.cornerRadius = buttonRadius;
    errorView.layer.shadowRadius = buttonRadius;
    errorView.layer.shadowColor = [[UIColor blackColor] CGColor];
    errorView.layer.shadowOffset = CGSizeMake(0,0);
    errorView.layer.shadowOpacity = 0.2;
    errorView.layer.masksToBounds = NO;
    errorView.layer.rasterizationScale = [UIScreen mainScreen].scale;
    errorView.layer.shouldRasterize = YES;
    
    trainingView.clipsToBounds = NO;
    trainingView.layer.cornerRadius = buttonRadius;
    trainingView.layer.shadowRadius = buttonRadius;
    trainingView.layer.shadowColor = [[UIColor blackColor] CGColor];
    trainingView.layer.shadowOffset = CGSizeMake(0,0);
    trainingView.layer.shadowOpacity = 0.2;
    trainingView.layer.masksToBounds = NO;
    trainingView.layer.rasterizationScale = [UIScreen mainScreen].scale;
    trainingView.layer.shouldRasterize = YES;
    
    active1.layer.cornerRadius = buttonRadius;
    active2.layer.cornerRadius = buttonRadius;
    active3.layer.cornerRadius = buttonRadius;
    opponent1.layer.cornerRadius = buttonRadius;
    
    empty1.layer.cornerRadius = buttonRadius;
    empty2.layer.cornerRadius = buttonRadius;
    empty3.layer.cornerRadius = buttonRadius;
    empty4.layer.cornerRadius = buttonRadius;
    
    supremacyView.layer.cornerRadius = buttonRadius;
    rushView.layer.cornerRadius = buttonRadius;
    aboutView.layer.cornerRadius = buttonRadius;
    backView.layer.cornerRadius = buttonRadius;
    beginView.layer.cornerRadius = buttonRadius;
    
    mainMenuView.layer.cornerRadius = buttonRadius;
    retryView.layer.cornerRadius = buttonRadius;
    dismissView.layer.cornerRadius = buttonRadius;
    
    [self performSelector:@selector(startupAnimations) withObject:self afterDelay:animationSpeed];
    
    if (trainingProgress == 5 && training == true) {
        trainingView.transform = CGAffineTransformMakeTranslation(0, 0);
        trainingLabel.text = [NSString stringWithFormat:@"Starting a new game"];
        trainingText.text = [NSString stringWithFormat:@"Start the game by choosing one of your three active cards."];
        [self performSelector:@selector(showTraining) withObject:self afterDelay:animationSpeed*2];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
