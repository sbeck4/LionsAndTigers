//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Shannon Beck on 1/15/15.
//  Copyright (c) 2015 Shannon Beck. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol HUDDelegate <NSObject>

//- (void)updateImageSet:(BOOL)isTigers;

- (void)lionsButtonTapped;

- (void)tigersButtonTapped;

@end

@interface HUDViewController : UIViewController



@property (nonatomic, weak) id<HUDDelegate> delegate;

@end
