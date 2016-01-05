//
//  ContentViewController.m
//  UIFont-demo
//
//  Created by huanghy on 16/1/4.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ContentViewController.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray *familyNames =[[NSArray alloc]initWithArray:[UIFont familyNames]];
    NSArray *fontNames;
    NSInteger indFamily, indFont;
    NSLog(@"[familyNames count]===%d",[familyNames count]);
    for(indFamily=0;indFamily<[familyNames count];++indFamily)
        
    {
        NSLog(@"Family name: %@", [familyNames objectAtIndex:indFamily]);
        fontNames =[[NSArray alloc]initWithArray:[UIFont fontNamesForFamilyName:[familyNames objectAtIndex:indFamily]]];
        
        for(indFont=0; indFont<[fontNames count]; ++indFont)
            
        {
            NSLog(@"Font name: %@",[fontNames objectAtIndex:indFont]);
            
        }
        
    }
    
    
    
    UILabel *contentLab = [[UILabel alloc]initWithFrame:CGRectMake(10, 64, self.view.frame.size.width,100)];
    contentLab.text = @"huanghaiyan";
    //contentLab.text = @"黄海燕";
    contentLab.font = [UIFont fontWithName:_fontName size:17];
    contentLab.numberOfLines = 0;
    [self.view addSubview:contentLab];
    
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
