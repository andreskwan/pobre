//
//  AGTCoreDataStack.h
//
//  Created by Fernando Rodríguez Romero on 1/24/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NSManagedObjectContext;

@interface AGTCoreDataStack : NSObject

@property (strong, nonatomic, readonly) NSManagedObjectContext *context;

+(NSString *) persistentStoreCoordinatorErrorNotificationName;

//para crear instacias
+(AGTCoreDataStack *) coreDataStackWithModelName:(NSString *)aModelName
                                databaseFilename:(NSString*) aDBName;

+(AGTCoreDataStack *) coreDataStackWithModelName:(NSString *)aModelName;


+(AGTCoreDataStack *) coreDataStackWithModelName:(NSString *)aModelName
                                     databaseURL:(NSURL*) aDBURL;


-(id) initWithModelName:(NSString *)aModelName
            databaseURL:(NSURL*) aDBURL;

-(void) zapAllData;

//guarda y si la cagas guarda este bloque
//el comprueba que de verdad haga falta guardar algo
-(void) saveWithErrorBlock: (void(^)(NSError *error))errorBlock;

@end
