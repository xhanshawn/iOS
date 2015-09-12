//
//  SecondViewController.h
//  OCTabExample
//
//  Created by HanXu on 9/9/15.
//  Copyright (c) 2015 xhanshawn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    
    IBOutlet UITableView *tableView;
    IBOutlet UIView *tableCell;
    
}


@end

