//
//  DogsTableViewController.m
//  tarea4
//
//  Created by Kristel Villalobos on 22/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//

#import "DogsTableViewController.h"
#import "Dog.h"
#import "DogsTableCell.h"
#import "DetailTableController.h"

#define CUSTOM_CELL_ID @"DogsTableCell"

@interface DogsTableViewController ()
@property (nonatomic,strong) NSMutableArray *dogsArray;

@end

@implementation DogsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    [self initializedDogs];
    
 
}

-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:CUSTOM_CELL_ID bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:CUSTOM_CELL_ID];
}


-(void) initializedDogs{
    

    Dog *dog1= [[Dog alloc] initWithImage:[UIImage imageNamed:@"boxer"] name:@"Rocco" color:@"cafe" location:@"Sabanilla" age:@"12" contactInformation:@"Kristel Villalobos"];
    Dog *dog2= [[Dog alloc] initWithImage:[UIImage imageNamed:@"bulldog"] name:@"Pepe" color:@"Negro" location:@"Quepos" age:@"12" contactInformation:@"Gabriel Villalobos"];
    Dog *dog3= [[Dog alloc] initWithImage:[UIImage imageNamed:@"labrador"] name:@"Gary" color:@"Blanco" location:@"Alajuela" age:@"12" contactInformation:@"Maribel Gonzalez"];
    Dog *dog4= [[Dog alloc] initWithImage:[UIImage imageNamed:@"pastor"] name:@"Pastorin" color:@"Negro" location:@"Montes de Oca" age:@"12" contactInformation:@"Katherine V. Rosales"];
    self.dogsArray = [[NSMutableArray alloc] initWithObjects:dog1,dog2,dog3,dog4, nil ];

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dogsArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DogsTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CUSTOM_CELL_ID];
    [cell setupCell:self.dogsArray[indexPath.row]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 165;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailTableController *detailTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailTableController"];
        Dog *dogSelected = self.dogsArray[indexPath.row];

    detailTableViewController.name = dogSelected.name;
    detailTableViewController.image = dogSelected.image;
    detailTableViewController.location = dogSelected.location;
    detailTableViewController.age = dogSelected.age;
    detailTableViewController.contact = dogSelected.contactInformation;
    
   [self.navigationController pushViewController:detailTableViewController animated:true];
}




@end
