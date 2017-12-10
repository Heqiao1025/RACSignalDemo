//
//  ViewController.m
//  RACSignalDemo
//
//  Created by heqiao on 2017/12/10.
//  Copyright © 2017年 com.ForC. All rights reserved.
//

#import "ViewController.h"
#import "OneOBJ.h"
#import "TwoObJ.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    OneOBJ *oneobj = [OneOBJ creatOneOBJWithTwoBlockOBJ:^(TwoObJ *obj) {
        
        [obj sendNext:@"string1"];
        
    }];
    
    [oneobj subScriberNext:^(id x) {
        NSLog(@"%@", x);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
