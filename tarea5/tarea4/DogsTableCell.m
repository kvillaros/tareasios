//
//  DogsTableCell.m
//  tarea4
//
//  Created by Kristel Villalobos on 25/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//

#import "DogsTableCell.h"
#import "Dog.h"


@interface DogsTableCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageUImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation DogsTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setupCell:(Dog*)dog{
    self.imageUImage.image = [UIImage imageNamed:dog.image];
    self.nameLabel.text = dog.name;
}



@end
