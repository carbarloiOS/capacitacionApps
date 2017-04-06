//
//  Dog.h
//  News
//
//  Created by Todos los demas que no son Daff on 1/3/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
@property (readonly) NSString *name;
@property (readonly) NSString *image;
@property (readonly) NSString *color;
@property (readonly) NSString *location;
@property (readonly) NSString *age;
@property (readonly) NSString *contactInformation;
@property (readonly) NSMutableArray *dogsArray;

-(id)initWithName:(NSString*)name image:(NSString*)image color:(NSString*)color
         location:(NSString*)localtion age:(NSString*)age contactInformation:(NSString*)contactInformation;
@end
