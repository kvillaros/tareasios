//
//  Dog.m
//  tarea4
//
//  Created by Kristel Villalobos on 22/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//

#import "Dog.h"


@interface Dog()
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) NSString *color;
@property (nonatomic,strong) NSString *location;
@property (nonatomic,strong) NSString *age;
@property (nonatomic,strong) NSString *contactInformation;
@end

@implementation Dog

-(id)initWithImage:(UIImage*)image name:(NSString*)name color:(NSString*)color location:(NSString*)location age:(NSString*)age contactInformation:(NSString*)contact {
    if (self = [super init]) {
        _image = image;
        _name = name;
        _color = color;
        _location = location;
        _age= age;
        _contactInformation = contact;
        
    }
    return self;
}


@end

