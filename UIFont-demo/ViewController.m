//
//  ViewController.m
//  UIFont-demo
//
//  Created by huanghy on 16/1/4.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ViewController.h"
#import "ContentViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *fonts;
@property (nonatomic, strong) UITableView *fontTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _fonts = [NSArray arrayWithArray:[UIFont familyNames]];
    
    _fontTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _fontTableView.delegate = self;
    _fontTableView.dataSource = self;
    [self.view addSubview:_fontTableView];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _fonts.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static  NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = _fonts[indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:_fonts[indexPath.row] size:24];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ContentViewController *contentVC = [[ContentViewController alloc]init];
    contentVC.fontName = _fonts[indexPath.row];
    [self.navigationController pushViewController:contentVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
