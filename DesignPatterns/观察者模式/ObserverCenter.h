//
//  ObserverCenter.h
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/24.
//

#import <Foundation/Foundation.h>
#import "ObserverProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ObserverCenter : NSObject

+ (instancetype)share;

// 创建订阅号
- (void)addSubject:(NSString *)subjectToken;

- (void)removeSubject:(NSString *)subjectToken;

- (void)addObserverWith:(id <ObserverProtocol>)user token:(NSString *)token;

- (void)removeObserverWith:(id <ObserverProtocol>)user token:(NSString *)token;

- (void)sendSubjectMessage:(id)message subjectToken:(NSString *)token;


@end

NS_ASSUME_NONNULL_END
