
//
//  RealmManager.h
//  News
//
//  Created by Todos los demas que no son Daff on 12/3/17.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
@class Dog;

@interface RealmManager : NSObject
+(RLMResults*)getAllDogs;
+(Dog*)getDogWithName:(NSString*)name;
@end
