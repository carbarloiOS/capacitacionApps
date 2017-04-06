//
//  UITableViewCell+GetClassName.m
//  News
//
//  Created by Cesar Brenes on 2/18/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "UITableViewCell+GetClassName.h"

@implementation UITableViewCell (GetClassName)

+(NSString*)getClassName{
    return NSStringFromClass(self);
}
@end
