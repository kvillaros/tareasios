//
//  Dog.h
//  tarea4
//
//  Created by Kristel Villalobos on 22/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface Dog : RLMObject
@property NSString *image;
@property NSString *name;
@property NSString *color;
@property NSString *location;
@property NSString *age;
@property NSString *contactInformation;
@end
RLM_ARRAY_TYPE(Dog)
