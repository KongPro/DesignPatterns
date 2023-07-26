//
//  ObserverProtocol.h
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ObserverProtocol <NSObject>

- (void)subscribeMessage:(id)message subscribeToken:(NSString *)token;

@end

NS_ASSUME_NONNULL_END
