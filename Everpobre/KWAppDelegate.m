//
//  KWAppDelegate.m
//  Everpobre
//
//  Created by Andres Kwan on 5/9/13.
//  Copyright (c) 2013 Kwan. All rights reserved.
//

#import "KWAppDelegate.h"
#import "AGTCoreDataStack.h"
#import "KWNoteBook.h"
#import "KWNote.h"

@implementation KWAppDelegate

-(void) trastearConDatos
{
    //creamos notebooks
    KWNoteBook * nb = [KWNoteBook insertInManagedObjectContext:self.model.context];
    KWNoteBook * nb2 = [KWNoteBook insertInManagedObjectContext:self.model.context];

    nb.name = @"Nueva Libreta";
    
    //creamos notas
    KWNote * nota = [KWNote noteInNoteBook:nb
                               withContext:self.model.context];
    
    NSLog(@"La nueva nota : %@", nota);
    NSLog(@"El notebook : %@", nb);
    
//    NSLog(@"La nueva nota : %@", nb);
//    NSLog(@"El notebook : %@", nb2);
    
    //Buscamos
    NSFetchRequest * request = [[NSFetchRequest alloc] initWithEntityName:[KWNoteBook entityName]];
    
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"name"
                                                              ascending:YES],
                                [NSSortDescriptor sortDescriptorWithKey:@"creationDate"
                                                              ascending:NO]];
    NSError *err = nil;
    NSArray *results = [self.model.context executeFetchRequest:request
                                                         error:&err];
    if (results == nil) {
        //Error al buscar
        NSLog(@"Error al buscar: %@",err);
    }
    NSLog(@"Librerias: %@",results);
    
    // Guardamos Objetos
    [self.model saveWithErrorBlock:^(NSError *error)
     {
         NSLog(@"la cagamos: %@",error);
     }];
    
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //inicializo el modelo (coreDataStack)
    self.model = [AGTCoreDataStack coreDataStackWithModelName:@"Everpobre"];
    [self trastearConDatos];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
