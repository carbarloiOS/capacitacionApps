//
//  ItemsViewController.h
//  QuizClase8
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"
@class Item;

@interface ItemsViewController : UIViewController
  @property (nonatomic,strong) Item *itemSelected;
@end
