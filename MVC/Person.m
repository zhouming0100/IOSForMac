//
//  Person.m
//  objc-test
//
//  Created by OYO04313 on 2020/6/1.
//

#import "Person.h"

@implementation Person

+ (instancetype)personWithName:(NSString *)name birthday:(NSString *)birthday {
    Person *person = [Person new];
    person.name = name;
    person.birthday = birthday;
    return person;
}

- (NSUInteger)hash {
    return [self.name hash] ^ [self.birthday hash];
}

- (BOOL)isEqual:(id)object {
    Person *p = (Person *)object;
    return [p.name isEqualToString:self.name] && [p.birthday isEqualToString:self.birthday];
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.birthday forKey:@"birthday"];
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    if (self = [super init]) {
//        self.name = [aDecoder decodeObjectForKey:@"name"];
//        self.birthday = [aDecoder decodeObjectForKey:@"birthday"];
        self.name = [aDecoder decodeObjectOfClass:NSString.class forKey:@"name"];
        self.birthday = [aDecoder decodeObjectOfClass:NSString.class forKey:@"birthday"];
    }
    return self;
}

+ (BOOL)supportsSecureCoding {
    return YES;
}

@end
