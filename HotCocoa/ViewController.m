//
//  ViewController.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "ViewController.h"
#import "HotCocoa/HotCocoa.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *test = [[NSArray alloc] initWithObjects:@"A",@"B",@"C",@"D",@"E", nil];
    NSString *testResult = [test dm_Reduce:^id(NSString *v1, NSString *v2){ return [v1 stringByAppendingString:v2]; }
                               withBase:@""];
    
    
    NSLog(@"%@",testResult);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
