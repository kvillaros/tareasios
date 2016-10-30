//
//  Dog.h
//  tarea4
//
//  Created by Kristel Villalobos on 22/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Dog : NSObject
@property (readonly) UIImage *image;
@property (readonly) NSString *name;
@property (readonly) NSString *color;
@property (readonly) NSString *location;
@property (readonly) NSString *age;
@property (readonly) NSString *contactInformation;
-(id)initWithImage:(UIImage*)image name:(NSString*)name color:(NSString*)color location:(NSString*)location age:(NSString*)age contactInformation:(NSString*)contact;
@end
