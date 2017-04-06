//
//  Category.m
//  News
//
//  Created by Cesar Brenes on 2/18/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "Category.h"

@interface Category()
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *imageName;
@property (nonatomic,strong) NSMutableArray *newsArray;
@end

@implementation Category

-(id)initWithName:(NSString*)name imageName:(NSString*)imageName{
    if (self = [super init]) {
        _name = name;
        _imageName = imageName;
        _newsArray = [NSMutableArray new];
    }
    return self;
}



@end
