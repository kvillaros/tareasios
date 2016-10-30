//
//  DetailTableController.m
//  tarea4
//
//  Created by Kristel Villalobos on 25/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//

#import "DetailTableController.h"
#import "Dog.h"

@interface DetailTableController ()


@property (weak, nonatomic) IBOutlet UIImageView *dogImage;
@property (weak, nonatomic) IBOutlet UILabel *dogName;
@property (weak, nonatomic) IBOutlet UILabel *dogLocation;
@property (weak, nonatomic) IBOutlet UILabel *dogAge;
@property (weak, nonatomic) IBOutlet UILabel *dogContact;

@end

@implementation DetailTableController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dogName.text = [NSString stringWithFormat: @"Nombre: %@",self.name];
    self.dogImage.image = self.image;
    self.dogContact.text = [NSString stringWithFormat: @"Contacto: %@",self.contact];
    self.dogAge.text = [NSString stringWithFormat: @"Edad: %@",self.age];
    self.dogLocation.text = [NSString stringWithFormat: @"Localización: %@",self.location];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
