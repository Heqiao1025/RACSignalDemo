//
//  TwoObJ.m
//  RACOne
//
//  Created by heqiao on 2017/12/10.
//  Copyright © 2017年 heqiao. All rights reserved.
//

#import "TwoObJ.h"

@interface TwoObJ ()

@property (nonatomic, copy, readonly) twoObjSuccessBlock successBlock;

@end

@implementation TwoObJ

+ (instancetype)sendSuccessBlock:(twoObjSuccessBlock)successBlcok
{
    TwoObJ *obj = [self new];
    obj->_successBlock = successBlcok;
    return obj;
}

- (void)sendNext:(id)x
{
    if (self.successBlock) {
        self.successBlock(x);
    }
}


@end
