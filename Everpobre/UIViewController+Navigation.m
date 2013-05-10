//
//  UIViewController+Navigation.m
//  Everpobre
//
//  Created by Andres Kwan on 5/10/13.
//  Copyright (c) 2013 Kwan. All rights reserved.
//

#import "UIViewController+Navigation.h"

@implementation UIViewController (Navigation)

-(UINavigationController *) wrappedInNavigation
{
    UINavigationController *navVC = [[UINavigationController alloc]init];
    [navVC pushViewController:self
                     animated:NO];
    return navVC;
}
@end
