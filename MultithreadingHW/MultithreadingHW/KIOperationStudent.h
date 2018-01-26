//
//  KIOperationStudent.h
//  MultithreadingHW
//
//  Created by Ivan Kozaderov on 26.01.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KIOperationStudent : NSObject

@property(strong,nonatomic)NSString* name;


-(void)guessnumber:(uint32_t)number inRange:(uint32_t)range resulBlock:(void(^)(KIOperationStudent*,double))result;
@end
