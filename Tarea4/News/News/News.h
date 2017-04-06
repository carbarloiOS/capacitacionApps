//
//  News.h
//  News
//
//  Created by Cesar Brenes on 2/25/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject
@property (readonly) NSDate *date;
@property (readonly) NSString *title;
@property (readonly) NSString *newsDescription;

-(id)initWithDate:(NSDate*)date title:(NSString*)title newsDescription:(NSString*)newsDescription;

@end
