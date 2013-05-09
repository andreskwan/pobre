//
//  KWAppDelegate.h
//  Everpobre
//
//  Created by Andres Kwan on 5/9/13.
//  Copyright (c) 2013 Kwan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AGTCoreDataStack;

@interface KWAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) AGTCoreDataStack *model;

@end
