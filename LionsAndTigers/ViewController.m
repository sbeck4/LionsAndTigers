//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Shannon Beck on 1/15/15.
//  Copyright (c) 2015 Shannon Beck. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface ViewController () <TopDelegate, HUDDelegate>

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *leftTopViewControllerConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *rightTopViewControllerConstraint;
@property TopViewController *myTopViewController;
@property HUDViewController *myHUDViewController;



@property BOOL revealButtonTapped;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.revealButtonTapped = YES;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"topSegue"]) {
        UINavigationController *navigationVC = segue.destinationViewController;
        self.myTopViewController = navigationVC.childViewControllers[0];
        self.myTopViewController.delegate = self;
        NSLog(@"HERE");
    }
    else if ([segue.identifier isEqualToString:@"hudSegue"])
    {
        self.myHUDViewController = segue.destinationViewController;
        self.myHUDViewController.delegate = self;
        NSLog(@" And HERE");
    }
}


- (void)lionsButtonTapped
{
    [self.myTopViewController changeImagesToTiger];
    self.leftTopViewControllerConstraint.constant -= 200;
    self.rightTopViewControllerConstraint.constant += 200;
    [UIView animateWithDuration:.4 animations:^
     {
         [self.view layoutIfNeeded];
     }];

    self.revealButtonTapped = YES;
}

- (void)tigersButtonTapped
{
    [self.myTopViewController changeImagesToLion];
    self.leftTopViewControllerConstraint.constant -= 200;
    self.rightTopViewControllerConstraint.constant += 200;
    [UIView animateWithDuration:.4 animations:^
     {
         [self.view layoutIfNeeded];
     }];

    self.revealButtonTapped = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)topRevealButtonTapped
{
    if (self.revealButtonTapped)
    {
        self.leftTopViewControllerConstraint.constant += 200;
        self.rightTopViewControllerConstraint.constant -= 200;

        self.revealButtonTapped = NO;
    }
    else
    {
        self.leftTopViewControllerConstraint.constant -= 200;
        self.rightTopViewControllerConstraint.constant += 200;

        self.revealButtonTapped = YES;
    }

    [UIView animateWithDuration:.4 animations:^
     {
         [self.view layoutIfNeeded];
     }];
}

@end
