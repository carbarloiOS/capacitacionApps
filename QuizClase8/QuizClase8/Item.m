//
//  Item.m
//  QuizClase8
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import "Item.h"

@interface Item()
  @property (nonatomic,strong) NSDate *date;
  @property (nonatomic,strong) NSString *name;
  @property (nonatomic,strong) NSString *quantity;
@end

@implementation Item

-(id)initWithDate:(NSDate*)date name:(NSString*)name quantity:(NSString*)quantity {
    if (self = [super init]){
        _date = date;
        _name = name;
        _quantity = quantity;
    }
    return self;
}

@end
