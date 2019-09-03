//
//  AFViewController.m
//  AFNullSafe
//
//  Created by MAF on 09/03/2019.
//  Copyright (c) 2019 MAF. All rights reserved.
//

#import "AFViewController.h"

@interface AFViewController ()

@end

@implementation AFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *arr = [NSNull null];
    [arr firstObject];
    
    NSMutableArray *mArr = [NSNull null];
    [mArr addObject:@"0"];
    
    NSMutableDictionary *mDic = [NSNull null];
    [mDic setObject:@"0" forKey:@"number"];
    
    NSString *str = [NSNull null];
    [str integerValue];
    
    NSNumber *number = [NSNull null];
    [number integerValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
