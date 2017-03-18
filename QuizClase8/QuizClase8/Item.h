//
//  Item.h
//  QuizClase8
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
  @property (readonly) NSDate *date;
  @property (readonly) NSString *name;
  @property (readonly) NSString *quantity;

  -(id)initWithDate:(NSDate*)date name:(NSString*)name quantity:(NSString*)quantity;

@end
