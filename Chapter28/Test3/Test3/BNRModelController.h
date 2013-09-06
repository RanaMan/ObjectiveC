//
//  BNRModelController.h
//  Test3
//
//  Created by Rana Puri on 2013-08-31.
//  Copyright (c) 2013 Rana Puri. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRDataViewController;

@interface BNRModelController : NSObject <UIPageViewControllerDataSource>

- (BNRDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(BNRDataViewController *)viewController;

@end
