//
//  Category.h
//  News
//
//  Created by Cesar Brenes on 2/18/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Category : NSObject
@property (readonly) NSString *name;
@property (readonly) NSString *imageName;
@property (readonly) NSMutableArray *newsArray;
-(id)initWithName:(NSString*)name imageName:(NSString*)imageName;
@end
