
//
//  ViewController.m
//  TOActionSheetExample
//
//  Created by Tim Oliver on 9/1/15.
//  Copyright (c) 2015 Tim Oliver. All rights reserved.
//

#import "ViewController.h"
#import "TOActionSheet.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)didTapShow:(id)sender {
    TOActionSheet *actionSheet = [[TOActionSheet alloc] init];
    actionSheet.title = nil;
    actionSheet.cancelButtonTitle = @"cancellll";
    actionSheet.style = (sender == self.darkButton) ? TOActionSheetStyleDark : TOActionSheetStyleLight;
    actionSheet.contentstyle = TOActionSheetContentStyleRight;
    actionSheet.buttonContentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;


    [actionSheet addButtonWithTitle:@"Do the thing"
                               icon:[UIImage imageNamed:@"help_ad_bubble"]
                           iconText:@"3"
                        tappedBlock:^{
        NSLog(@"Done!");
    }];

    [actionSheet addButtonWithTitle:@"Do another thing"
                               icon:[UIImage imageNamed:@"help_ad_bubble"]
                           iconText:@"AD"
                        tappedBlock:^{
        NSLog(@"Done!");
    }];

    [actionSheet addButtonWithTitle:@"Do another thing"
                               icon:[UIImage imageNamed:@"help_ad_bubble"]
                           iconText:@"ADD"
                        tappedBlock:^{
        NSLog(@"Done!");
    }];

    [actionSheet addButtonWithTitle:@"Do another thing"
                               icon:[UIImage imageNamed:@"help_ad_bubble"]
                           iconText:@"AD"
                        tappedBlock:^{
        NSLog(@"Done!");
    }];

    actionSheet.actionSheetDismissedBlock = ^{
        NSLog(@"Dismissed!");
    };

    UIButton *button = (UIButton *)sender;
    [actionSheet showFromView:button inView:self.navigationController.view];
}

@end
