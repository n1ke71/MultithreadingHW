//
//  KIStudent.m
//  MultithreadingHW
//
//  Created by Ivan Kozaderov on 24.01.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import "KIStudent.h"
#import <UIKit/UIKit.h>

@implementation KIStudent



//Singletone GCD
+(dispatch_queue_t) makeSharedQueue{
    
    static dispatch_queue_t sharedQueue;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        sharedQueue = dispatch_queue_create("GCD.multithread.queue.com", DISPATCH_QUEUE_CONCURRENT);
        
    });
    return sharedQueue;
    
}


-(void)guessnumber:(uint32_t)number inRange:(uint32_t)range resulBlock:(void(^)(KIStudent*,double))result{
    
    
    __block uint32_t tempNumber = 0;
    double Time = CACurrentMediaTime();
    __weak KIStudent* student = self;
    
    dispatch_async([KIStudent makeSharedQueue], ^{
        
        while (tempNumber !=number) {
            
            tempNumber = arc4random_uniform(range);
            
        }
        
    
    });
    result(student,CACurrentMediaTime() - Time);
   
}





@end
