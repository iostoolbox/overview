//
//  ViewController.m
//  iOSToolbox-Sample
//
//  Created by iOS Toolbox on 17/03/14.
//  Copyright (c) 2014 iOS Toolbox. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"

@implementation ViewController

- (void)loadView
{
    MyView *myView = [[MyView alloc] init];
    myView.backgroundColor = [UIColor colorWithRed:0.224 green:0.263 blue:0.369 alpha:1];
    self.view = myView;
    
    //// title label
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.textColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:23];
    titleLabel.text = NSLocalizedString(@"Sample App Title", nil);
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:titleLabel];
    
    // center titleLabel horizontally in superview
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:titleLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    // center titleLabel vertically in superview
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:titleLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
    
    //// buy button
    UIButton *buyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [buyButton setBackgroundImage:[UIImage imageNamed:@"buyButton"] forState:UIControlStateNormal];
    [buyButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [buyButton setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [buyButton setTitle:NSLocalizedString(@"Buy PS Plugin Today!", nil) forState:UIControlStateNormal];
    buyButton.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:23];
    [self.view addSubview:buyButton];
    
    // center buyButton horizontally in superview
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:buyButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    // align buyButton from the bottom
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[buyButton]-60.5-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(buyButton)]];
}

@end
