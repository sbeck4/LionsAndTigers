//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Shannon Beck on 1/15/15.
//  Copyright (c) 2015 Shannon Beck. All rights reserved.
//

#import "TopViewController.h"
#import "ImageCollectionViewCell.h"
#import "HUDViewController.h"

@interface TopViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property NSMutableArray *babyTigers;
@property NSMutableArray *babyLions;
@property NSMutableArray *currentArray;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property HUDViewController *hud;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *hamburgerButton;



@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.babyLions = [[NSMutableArray alloc]init];
    [self.babyLions addObject:[UIImage imageNamed:@"babylion1"]];
    [self.babyLions addObject:[UIImage imageNamed:@"babylion2"]];
    [self.babyLions addObject:[UIImage imageNamed:@"babylion3"]];
    [self.babyLions addObject:[UIImage imageNamed:@"babylion4"]];
    [self.babyLions addObject:[UIImage imageNamed:@"babylion5"]];
    [self.babyLions addObject:[UIImage imageNamed:@"babylion6"]];

    self.babyTigers = [[NSMutableArray alloc]init];
    [self.babyTigers addObject:[UIImage imageNamed:@"babytiger1"]];
    [self.babyTigers addObject:[UIImage imageNamed:@"babytiger2"]];
    [self.babyTigers addObject:[UIImage imageNamed:@"babytiger3"]];
    [self.babyTigers addObject:[UIImage imageNamed:@"babytiger4"]];
    [self.babyTigers addObject:[UIImage imageNamed:@"babytiger5"]];
    [self.babyTigers addObject:[UIImage imageNamed:@"babytiger6"]];


    self.currentArray = self.babyTigers;

    //self.hud.delegate = self;

    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)topRevealButton:(id)sender
{
    [self.delegate topRevealButtonTapped];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [self.currentArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)changeImagesToTiger
{
    self.currentArray = self.babyTigers;
    [self.collectionView reloadData];
}

- (void)changeImagesToLion
{
    self.currentArray = self.babyLions;
    [self.collectionView reloadData];
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
