//
//  ObserverCenter.m
//  DesignPatterns
//
//  Created by 孔繁武 on 2023/7/24.
//

#import "ObserverCenter.h"

@interface ObserverCenter ()

@property (nonatomic, strong)NSMutableDictionary * dict;

@end

@implementation ObserverCenter

+ (instancetype)share {
    static dispatch_once_t onceToken;
    static ObserverCenter *center = nil;
    dispatch_once(&onceToken, ^{
        center = [[ObserverCenter alloc] init];
    });
    return center;
}

- (void)addSubject:(NSString *)subjectToken {
    NSHashTable<id <ObserverProtocol>> *table = [self.dict objectForKey:subjectToken];
    if (table == nil) {
        table = [NSHashTable weakObjectsHashTable];
        [self.dict setObject:table forKey:subjectToken];
    }
}

- (void)removeSubject:(NSString *)subjectToken {
    NSHashTable *table = [self.dict objectForKey:subjectToken];
    if (table != nil) {
        [self.dict removeObjectForKey:subjectToken];
    }
}

- (void)addObserverWith:(id<ObserverProtocol>)user token:(NSString *)token {
    NSHashTable<id <ObserverProtocol>> *table = [self.dict objectForKey:token];
    if (table != nil) {
        [table addObject:user];
    }
}

- (void)removeObserverWith:(id<ObserverProtocol>)user token:(NSString *)token {
    NSHashTable<id <ObserverProtocol>> *table = [self.dict objectForKey:token];
    if (table) {
        [table removeObject:user];
    }
}

- (void)sendSubjectMessage:(id)message subjectToken:(NSString *)token {
    NSHashTable< id <ObserverProtocol>> *table = [self.dict objectForKey:token];
    if (table) {
        NSEnumerator *enumerator = [table objectEnumerator];
        id <ObserverProtocol> objc = nil;
        while (objc = [enumerator nextObject]) {
            if ([objc respondsToSelector:@selector(subscribeMessage:subscribeToken:)]) {
                [objc subscribeMessage:message subscribeToken:token];
            }
        }
    }
}

#pragma mark - Lazy
- (NSMutableDictionary *)dict {
    if (!_dict) {
        _dict = [NSMutableDictionary dictionary];
    }
    return _dict;
}

@end
