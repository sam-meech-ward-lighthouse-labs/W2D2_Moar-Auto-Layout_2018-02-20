//
//  ViewController.m
//  Squares
//
//  Created by Sam Meech-Ward on 2018-02-20.
//  Copyright © 2018 lighthouse-labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UIView *orange;
@property (nonatomic, weak) UIView *red;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  UIView *orange = [[UIView alloc] init];
  UIView *red = [[UIView alloc] init];
  
  orange.backgroundColor = [UIColor orangeColor];
  red.backgroundColor = [UIColor redColor];
  
  orange.translatesAutoresizingMaskIntoConstraints = NO;
  red.translatesAutoresizingMaskIntoConstraints = NO;
  
  [self.view addSubview:red];
  [red addSubview:orange];
  
  self.orange = orange;
  self.red = red;
  
  [self setupConstraints];

  
  // These two are equal
//  NSLayoutConstraint *constraint = [NSLayoutConstraint
//   constraintWithItem:orange
//   attribute:NSLayoutAttributeWidth
//   relatedBy:NSLayoutRelationEqual
//   toItem:nil
//   attribute:NSLayoutAttributeNotAnAttribute
//   multiplier:1.0
//   constant:70.0];
  
//  NSLayoutConstraint *constraint = [orange.width = 70];
  
//  NSLayoutConstraint *constraint = [orange.widthAnchor constraintEqualToConstant:70];
}

- (void)setupConstraints {
  
  // orange: Width = 70, height = 30
  // Red: top = 20, right = 20
  // the rest is just margins
  
  NSLayoutConstraint *orangeWidth = [self.orange.widthAnchor constraintEqualToConstant:170.0];
  NSLayoutConstraint *orangeHeight = [self.orange.heightAnchor constraintEqualToConstant:130.0];
  
  NSLayoutConstraint *redTop = [self.red.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor];
  NSLayoutConstraint *redRight = [self.red.rightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.rightAnchor];
  
  NSLayoutConstraint *orangeTop = [self.orange.topAnchor constraintEqualToAnchor:self.red.layoutMarginsGuide.topAnchor];
  NSLayoutConstraint *orangeRight = [self.orange.rightAnchor constraintEqualToAnchor:self.red.layoutMarginsGuide.rightAnchor];
  NSLayoutConstraint *orangeBottom = [self.orange.bottomAnchor constraintEqualToAnchor:self.red.layoutMarginsGuide.bottomAnchor];
  NSLayoutConstraint *orangeLeft = [self.orange.leftAnchor constraintEqualToAnchor:self.red.layoutMarginsGuide.leftAnchor];
  
  orangeWidth.active = YES;
  orangeHeight.active = YES;
  redTop.active = YES;
  redRight.active = YES;
  orangeTop.active = YES;
  orangeRight.active = YES;
  orangeBottom.active = YES;
  orangeLeft.active = YES;
  
//  self.view.safeAreaLayoutGuide
  
  UILabel *label = [[UILabel alloc] init];
  label.text = @"🤗🤗🤗🤗🤗🤗";
  [self.view addSubview:label];
  
  label.translatesAutoresizingMaskIntoConstraints = NO;
  
  [label.leftAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leftAnchor].active = YES;
  [label.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = YES;
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
