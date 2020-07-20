//
//  Person.h
//  objc-test
//
//  Created by OYO04313 on 2020/6/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<NSCoding, NSSecureCoding>

@property(nonnull, copy) NSString *name;
@property(nonnull, copy) NSString *birthday;

+ (instancetype)personWithName:(NSString *)name birthday:(NSString *)birthday;

@end

NS_ASSUME_NONNULL_END
