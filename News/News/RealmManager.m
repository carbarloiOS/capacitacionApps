
//
//  RealmManager.m
//  News
//
//  Created by Todos los demas que no son Daff on 12/3/17.
//

#import "RealmManager.h"
#import "Dog.h"


@implementation RealmManager

+(RLMResults*)getAllDogs{
    RLMResults<Dog *> *dog = [Dog allObjects]; // retrieves all Dogs from the default Realm
    if (dog.count>0){
        return dog;
    }
    return [RealmManager insertDogs];
}

// Inserta los perritos en la base de datos

+(RLMResults*)insertDogs {
    //    Dog *d1 = [[Dog alloc] initWithName:@"Akon" image:@"akon" color:@"NegroGris" location:@"Alajuela" age:@"6 meses" contactInformation:@"akon@dogs.com" ];
    Dog *d1 = [self createDogWithName:@"Akon" image:@"akon" color:@"NegroGris" location:@"Alajuela" age:@"6 meses" contactInformation:@"akon@dogs.com"];
    [RealmManager saveRealmObject:d1];
    Dog *d2 = [self createDogWithName:@"Berk" image:@"berk" color:@"Negro Carbon" location:@"Heredia" age:@"2 años" contactInformation:@"berk@dogs.com" ];
    [RealmManager saveRealmObject:d2];
    Dog *d3 = [self createDogWithName:@"Cela" image:@"cela" color:@"Tipico Negro rojo" location:@"Cartago" age:@"6 meses" contactInformation:@"cela@dogs.com" ];
    [RealmManager saveRealmObject:d3];
    Dog *d4 = [self createDogWithName:@"Diana" image:@"diana" color:@"Azabache" location:@"San Jose" age:@"6 meses" contactInformation:@"diana@dogs.com"];
    [RealmManager saveRealmObject:d4];
    
    
    return [RealmManager getAllDogs];
} // insertDogs


+(Dog*)createDogWithName:(NSString*)name image:(NSString*)image color:(NSString*)color location:(NSString*)location age:(NSString*)age contactInformation:(NSString*)contactInformation{
    Dog *dog = [[Dog alloc] init];
    
    dog.name = name;
    dog.image = image;
    dog.color = color;
    dog.location = location;
    dog.age = age;
    dog.contactInformation = contactInformation;
    
    return dog;
}

+(void)saveRealmObject:(RLMObject*)realmObject{
    // Get the default Realm
    RLMRealm *realm = [RLMRealm defaultRealm];
    // You only need to do this once (per thread)
    // Add to Realm with transaction
    [realm beginWriteTransaction];
    [realm addObject:realmObject];
    [realm commitWriteTransaction];
}

+(Dog*)getDogWithName:(NSString*)name{
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = %@", name];
    RLMResults<Dog *> *dogs = [Dog objectsWithPredicate:predicate];
    if (dogs.count>0){
        return dogs.firstObject;
    }
    return nil;
}

@end
