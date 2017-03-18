//
//  AppDelegate.h
//  QuizClase8
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

