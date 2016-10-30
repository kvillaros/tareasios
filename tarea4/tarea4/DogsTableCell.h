//
//  DogsTableCell.h
//  tarea4
//
//  Created by Kristel Villalobos on 25/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Dog;

@interface DogsTableCell : UITableViewCell
-(void)setupCell:(Dog*)dog;
@end
