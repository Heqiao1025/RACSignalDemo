//
//  TwoObJ.h
//  RACOne
//
//  Created by heqiao on 2017/12/10.
//  Copyright © 2017年 heqiao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^twoObjSuccessBlock)(id x);

@interface TwoObJ : NSObject

+ (instancetype)sendSuccessBlock:(twoObjSuccessBlock)successBlcok;

- (void)sendNext:(id)x;

@end
