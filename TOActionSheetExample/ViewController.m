
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
                          rightIcon:[UIImage imageNamed:@"help_ad_bubble"]
                           leftIcon:[UIImage imageNamed:@"help_mark_error"]
                      rightIconText:@"3" tappedBlock:^{
        NSLog(@"Done!");
    }];

    [actionSheet addButtonWithTitle:@"Do another thing"
                          rightIcon:[UIImage imageNamed:@"help_ad_bubble"]
                           leftIcon:[UIImage imageNamed:@"help_next_puzzle"]
                      rightIconText:@"AD" tappedBlock:^{
        NSLog(@"Done!");
    }];

    [actionSheet addButtonWithTitle:@"Do the thing"
                          rightIcon:[UIImage imageNamed:@"help_ad_bubble"]
                           leftIcon:[UIImage imageNamed:@"help_solve_letter"]
                      rightIconText:@"2" tappedBlock:^{
        NSLog(@"Done!");
    }];

    [actionSheet addButtonWithTitle:@"Do the thing"
                          rightIcon:[UIImage imageNamed:@"help_ad_bubble"]
                           leftIcon:[UIImage imageNamed:@"help_sove_word"]
                      rightIconText:@"1" tappedBlock:^{
        NSLog(@"Done!");
    }];

    [actionSheet addButtonWithTitle:@"No icons"
                          rightIcon:[UIImage new]
                           leftIcon:[UIImage new]
                      rightIconText:@"" tappedBlock:^{
        NSLog(@"Done!");
    }];

    actionSheet.actionSheetDismissedBlock = ^{
        NSLog(@"Dismissed!");
    };

    UIButton *button = (UIButton *)sender;
//    [actionSheet showFromView:button inView:self.navigationController.view];
    [actionSheet showFromView:self.view inView:self.view];
}

@end
