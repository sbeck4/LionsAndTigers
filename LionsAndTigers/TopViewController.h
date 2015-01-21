//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Shannon Beck on 1/15/15.
//  Copyright (c) 2015 Shannon Beck. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

- (void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController

@property (nonatomic, weak) id<TopDelegate> delegate;

@property (strong, nonatomic) IBOutlet UIScreenEdgePanGestureRecognizer *panGesture;

- (void)changeImagesToTiger;

- (void)changeImagesToLion;

@end
