//
//  KIOperationStudent.m
//  MultithreadingHW
//
//  Created by Ivan Kozaderov on 26.01.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import "KIOperationStudent.h"
#import <UIKit/UIKit.h>

@implementation KIOperationStudent

//Singletone NSOperationQueue
+(NSOperationQueue*) makeSharedQueue{
    
    static NSOperationQueue* sharedQueue;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        sharedQueue = [[NSOperationQueue alloc]init];;
        sharedQueue.name =@"OperationQueue.multithread.queue.com";
    });
    return sharedQueue;
    
}



-(void)guessnumber:(uint32_t)number inRange:(uint32_t)range resulBlock:(void(^)(KIOperationStudent*,double))result{
    
    
    __block uint32_t tempNumber = 0;
    double Time = CACurrentMediaTime();
    __weak KIOperationStudent* student = self;
    
    [[KIOperationStudent makeSharedQueue]  addOperationWithBlock:^{
        
        while (tempNumber !=number) {
            
            tempNumber = arc4random_uniform(range);
            
        }
        
        result(student,CACurrentMediaTime() - Time);
    }];

   
}
@end
