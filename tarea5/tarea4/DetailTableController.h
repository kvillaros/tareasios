//
//  DetailTableController.h
//  tarea4
//
//  Created by Kristel Villalobos on 25/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Dog;

@interface DetailTableController : UITableViewController

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) NSString *location;
@property (nonatomic,strong) NSString *age;
@property (nonatomic,strong) NSString *contact;

@end
