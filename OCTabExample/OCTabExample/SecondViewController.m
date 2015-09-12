//
//  SecondViewController.m
//  OCTabExample
//
//  Created by HanXu on 9/9/15.
//  Copyright (c) 2015 xhanshawn. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController{
    NSArray *tableData;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [tableData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    UIImageView *icon = nil;
    UIImage *iconImg = [UIImage imageNamed:@"first"];
    tableCell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        icon = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        icon.tag = 100;
        icon.image = iconImg;
        [cell.contentView addSubview:icon];
    } else {
        icon = [cell.contentView viewWithTag: 100];
    }
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tableData = [NSArray arrayWithObjects: @"First", @"Second", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
