//
//  ViewController.m
//  12233333
//
//  Created by ChenLu on 2017/6/23.
//  Copyright © 2017年 cn.laketony. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@",[self replaceString:@"6217 7302 0303 5968 43"]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSString *)replaceString:(NSString *)string
{
    NSString *num = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *first = [num substringToIndex:4];
    NSString *endStr = [num substringFromIndex:num.length-4];
    
    
    NSString *newStr = [NSString stringWithFormat:@"%@ **** **** %@",first,endStr];
        
    return newStr;
}

@end
