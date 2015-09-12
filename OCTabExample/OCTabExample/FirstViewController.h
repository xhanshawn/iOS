//
//  FirstViewController.h
//  OCTabExample
//
//  Created by HanXu on 9/9/15.
//  Copyright (c) 2015 xhanshawn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController{
    __strong IBOutlet UILabel *label1text;
}

@property(nonatomic, retain) IBOutlet UILabel *label1text;

-(IBAction) clicked:(id)sender;

@end

