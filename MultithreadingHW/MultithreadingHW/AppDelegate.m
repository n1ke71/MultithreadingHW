//
//  AppDelegate.m
//  MultithreadingHW
//
//  Created by Ivan Kozaderov on 24.01.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import "AppDelegate.h"
#import "KIStudent.h"
#import "KIOperationStudent.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    KIStudent*student  = [[KIStudent alloc]init];
    student.name = @"student";
    KIStudent*student2 = [[KIStudent alloc]init];
    student2.name = @"student2";
    KIStudent*student3 = [[KIStudent alloc]init];
    student3.name = @"student3";
    KIStudent*student4 = [[KIStudent alloc]init];
    student4.name = @"student4";
    KIStudent*student5 = [[KIStudent alloc]init];
    student5.name = @"student5";
  
    KIOperationStudent*oStudent  = [[KIOperationStudent alloc]init];
    oStudent.name = @"oStudent";
    KIOperationStudent*oStudent2 = [[KIOperationStudent alloc]init];
    oStudent2.name = @"oStudent2";
    KIOperationStudent*oStudent3 = [[KIOperationStudent alloc]init];
    oStudent3.name = @"oStudent3";
    KIOperationStudent*oStudent4 = [[KIOperationStudent alloc]init];
    oStudent4.name = @"oStudent4";
    KIOperationStudent*oStudent5 = [[KIOperationStudent alloc]init];
    oStudent5.name = @"oStudent5";
    
    
    NSArray* array = [NSArray arrayWithObjects:student,student2,student3,student4,student5, nil];
   
        for (KIStudent* student in array) {
            
            [student guessnumber:23 inRange:100 resulBlock:^(KIStudent * stud, double time) {
                
                NSLog(@"Student %@ guess a number! time=%f",stud.name,time);
                
            }];
            
        }
   NSArray* oArray = [NSArray arrayWithObjects:oStudent,oStudent2,oStudent3,oStudent4,oStudent5, nil];
    
    for (KIOperationStudent* oStudent in oArray) {
        
        [oStudent guessnumber:23 inRange:100 resulBlock:^(KIOperationStudent * stud, double time) {
            
            NSLog(@"Student %@ guess a number! time=%f",stud.name,time);
            
        }];
        
    }

    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
