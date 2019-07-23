//
//  ViewController.m
//  Navigation button with Pop up Menu
//
//  Created by Mallikarjun on 09/05/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

#import "ViewController.h"
#import "FTPopOverMenu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *moreButton =  [UIButton buttonWithType:UIButtonTypeCustom];
    [moreButton setImage:[UIImage imageNamed:@"ic_more_vert2_2x.png"] forState:UIControlStateNormal];
    [moreButton addTarget:self action:@selector(onNavButtonTapped:event:) forControlEvents:UIControlEventTouchUpInside];
    [moreButton setFrame:CGRectMake(0, 0, 35, 35)];
    
    UIView *rightBarButtonItems = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 25, 32)];
    [rightBarButtonItems addSubview:moreButton];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBarButtonItems];
}

-(void)onNavButtonTapped:(UIBarButtonItem *)sender event:(UIEvent *)event
{
    
    //***********************this is oriogional code ***but some error **********************
    // this method is show in github ...but it has some issue ..this is getting error because "withMenu" is not found ....if we replace it with "withMenuArray" then it will work see next changed code
    
    //    [FTPopOverMenu showFromEvent:event
    //                        withMenu:@[@"123",@"234",@"345"]
    //                  imageNameArray:@[@"setting_icon",@"setting_icon",@"setting_icon"]
    //                       doneBlock:^(NSInteger selectedIndex) {
    //
    //                       } dismissBlock:^{
    //
    //                       }];

    //***********************this is oriogional code ***but some error **********************
    
   
    
    // line number 26 in FTPopOverMenu.m changed - 200.f with 120.f .So now width is increased.
    // **********This is corrected code ************
    [FTPopOverMenu showFromEvent:event withMenuArray:@[@"Change Ticket Status",@"  Open",@"  Resolved",@"  Delete"] imageArray:@[@"",@"open",@"resolved",@"delete"] doneBlock:^(NSInteger selectedIndex) {
       
        if (selectedIndex==0) {
            NSLog(@"Clicked Title : Index 0");
        }
       else if (selectedIndex==1) {
            NSLog(@"Clicked on Open : Index 1");
        }
        else if(selectedIndex==2)
        {
            NSLog(@"Clicked on Resolved : Index 2");
        }
        else if(selectedIndex==3)
        {
            NSLog(@"Clicked on Delete : Index 3");
        }
    } dismissBlock:^{
        
                    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
