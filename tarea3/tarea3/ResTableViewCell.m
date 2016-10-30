//
//  ResTableViewCell.m
//  tarea3
//
//  Created by Kristel Villalobos on 9/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//

#import "ResTableViewCell.h"

@interface ResTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *lblNumber;


@end

@implementation ResTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) configureCellWithNumber:(NSString*)num{
    
    self.lblNumber.text = num;

    
}
@end
