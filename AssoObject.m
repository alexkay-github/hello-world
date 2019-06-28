//
//  AssoObject.m
//  AssociatedObjectTest
//
//  Created by 김택훈 on 2019. 6. 21..
//  Copyright © 2019년 Malgn Technology. All rights reserved.
//

#import "AssoObject.h"
#import <objc/runtime.h>

@implementation AssoObject

- (void)setName:(NSString *)name {
 
    objc_setAssociatedObject(self, @selector(name), name, OBJC_ASSOCIATION_RETAIN);
}

- (NSString *)name {
    
    return (NSString *)objc_getAssociatedObject(self, @selector(name));
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"name=%@", self.name];
}

@end
