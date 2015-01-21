//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Shannon Beck on 1/15/15.
//  Copyright (c) 2015 Shannon Beck. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()
@property (strong, nonatomic) IBOutlet UIButton *lionsButton;
@property (strong, nonatomic) IBOutlet UIButton *tigersButton;


@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLionsButtonTapped:(id)sender
{
    [self.delegate tigersButtonTapped];
}

- (IBAction)onTigersButtonTapped:(id)sender
{
    [self.delegate lionsButtonTapped];
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
