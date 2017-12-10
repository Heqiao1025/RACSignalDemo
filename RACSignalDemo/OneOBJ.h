//
//  OneOBJ.h
//  RACOne
//
//  Created by heqiao on 2017/12/10.
//  Copyright © 2017年 heqiao. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TwoObJ;

typedef void (^twoOBJBlock) (TwoObJ *obj);

typedef void (^oneOBJBlock) (twoOBJBlock block);

@interface OneOBJ : NSObject

+ (instancetype)creatOneOBJWithTwoBlockOBJ:(twoOBJBlock)twoblock;

- (void)subScriberNext:(void(^)(id x))nextBlock;

- (void)setFormat:(NSString *)string, ...;

@end
