//
//  OneOBJ.m
//  RACOne
//
//  Created by heqiao on 2017/12/10.
//  Copyright © 2017年 heqiao. All rights reserved.
//

#import "OneOBJ.h"
#import "TwoObJ.h"

@interface OneOBJ ()

@property (nonatomic, copy, readonly) twoOBJBlock didScriber;

@end

@implementation OneOBJ

+ (instancetype)creatOneOBJWithTwoBlockOBJ:(twoOBJBlock)twoblock
{
    OneOBJ *oneObj = [self new];
    oneObj->_didScriber = [twoblock copy];
    return oneObj;
}

- (void)subScriberNext:(void(^)(id x))nextBlock;
{
    TwoObJ *obj = [TwoObJ sendSuccessBlock:nextBlock];
    if (self.didScriber) {
        self.didScriber(obj);
    }
}


@end
