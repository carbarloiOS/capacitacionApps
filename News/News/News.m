//
//  News.m
//  News
//
//  Created by Cesar Brenes on 2/25/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "News.h"

@interface News()
@property (nonatomic,strong) NSDate *date;
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *newsDescription;
@end

@implementation News

-(id)initWithDate:(NSDate*)date title:(NSString*)title newsDescription:(NSString*)newsDescription{
    if (self = [super init]){
        _date = date;
        _title = title;
        _newsDescription = newsDescription;
    }
    return self;
}

@end
