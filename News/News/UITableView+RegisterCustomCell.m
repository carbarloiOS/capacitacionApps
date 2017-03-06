//
//  UITableView+RegisterCustomCell.m
//  News
//
//  Created by Cesar Brenes on 2/18/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "UITableView+RegisterCustomCell.h"

@implementation UITableView (RegisterCustomCell)

-(void)registerCustomCellWithName:(NSString*)name{
    UINib *nib = [UINib nibWithNibName:name bundle:nil];
    [self registerNib:nib forCellReuseIdentifier:name];
}

@end
