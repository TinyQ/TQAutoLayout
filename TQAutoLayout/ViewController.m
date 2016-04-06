//
//  ViewController.m
//  TQAutoLayout
//
//  Created by qfu on 4/7/16.
//  Copyright © 2016 qfu. All rights reserved.
//

#import "ViewController.h"
#import "UIView+TQAutoLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:view];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    
//    [NSLayoutConstraint activateConstraints:@[[NSLayoutConstraint constraintWithItem:view
//                                                                           attribute:NSLayoutAttributeLeft
//                                                                           relatedBy:NSLayoutRelationEqual
//                                                                              toItem:self.view
//                                                                           attribute:NSLayoutAttributeLeft
//                                                                          multiplier:1.0
//                                                                            constant:0],
//                                              [NSLayoutConstraint constraintWithItem:view
//                                                                           attribute:NSLayoutAttributeRight
//                                                                           relatedBy:NSLayoutRelationEqual
//                                                                              toItem:self.view
//                                                                           attribute:NSLayoutAttributeRight
//                                                                          multiplier:1.0
//                                                                            constant:0],
//                                              [NSLayoutConstraint constraintWithItem:view
//                                                                           attribute:NSLayoutAttributeTop
//                                                                           relatedBy:NSLayoutRelationEqual
//                                                                              toItem:self.view
//                                                                           attribute:NSLayoutAttributeTop
//                                                                          multiplier:1.0
//                                                                            constant:0],
//                                              [NSLayoutConstraint constraintWithItem:view
//                                                                           attribute:NSLayoutAttributeBottom
//                                                                           relatedBy:NSLayoutRelationEqual
//                                                                              toItem:self.view
//                                                                           attribute:NSLayoutAttributeBottom
//                                                                          multiplier:1.0
//                                                                            constant:0],]];
    
    [NSLayoutConstraint activateConstraints:@[[view.tq_left equal:self.view.tq_left],
                                              [view.tq_right equal:self.view.tq_right],
                                              [view.tq_top equal:self.view.tq_top],
                                              [view.tq_bottom equal:self.view.tq_bottom],]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
