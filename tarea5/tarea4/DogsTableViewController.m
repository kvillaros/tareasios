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
#import <Realm/Realm.h>
#define CUSTOM_CELL_ID @"DogsTableCell"

@interface DogsTableViewController ()
@property (nonatomic, strong) RLMResults<Dog *> *dogsArray;

@end

@implementation DogsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self mainInitializer];
 
}

-(void) mainInitializer{
    [self registerCustomCell];
    [self getCategoryArray];
}

-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:CUSTOM_CELL_ID bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:CUSTOM_CELL_ID];
}


-(void)getCategoryArray{
    
        RLMResults<Dog *> *dogs = [Dog allObjects];
    
    if (dogs.count == 0) {
        // crear las categorias
        [self fillCategories];
    }else {
        self.dogsArray = dogs;
         [self.tableView reloadData];
    }
    
}

- (void)fillCategories {
    
    Dog *boxer = [[Dog alloc] init];
    boxer.name = @"Rocco";
    boxer.color = @"cafe";
    boxer.location = @"Quepos";
    boxer.age = @"12";
    boxer.image = @"boxer";
    boxer.contactInformation = @"Kristel Villalobos";
    
    Dog *bulldog = [[Dog alloc] init];
    bulldog.name = @"Pepe";
    bulldog.color = @"Negro";
    bulldog.location = @"Montes de Oca";
    bulldog.age = @"12";
    bulldog.image = @"bulldog";
    bulldog.contactInformation = @"Gabriel Villalobos";
    
    
    Dog *labrador = [[Dog alloc] init];
    labrador.name = @"Gary";
    labrador.color = @"Blanco";
    labrador.location = @"Sabanilla";
    labrador.age = @"12";
    labrador.image = @"labrador";
    labrador.contactInformation = @"Gabriel Villalobos";
    
    Dog *pastor = [[Dog alloc] init];
    pastor.name = @"Pastorin";
    pastor.color = @"Blanco";
    pastor.location = @"Parrita";
    pastor.age = @"12";
    pastor.image = @"pastor";
    pastor.contactInformation = @"Gabriel Villalobos";
    
    
    // Get the default Realm
    RLMRealm *realm = [RLMRealm defaultRealm];
    // You only need to do this once (per thread)
    
    // Add to Realm with transaction
    [realm beginWriteTransaction];
    [realm addObject:boxer];
    [realm addObject:bulldog];
    [realm addObject:labrador];
    [realm addObject:pastor];
    [realm commitWriteTransaction];
    [self getCategoryArray];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   // return self.dogsArray.count;
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
    detailTableViewController.image = [UIImage imageNamed:dogSelected.image];
    detailTableViewController.location = dogSelected.location;
    detailTableViewController.age = dogSelected.age;
    detailTableViewController.contact = dogSelected.contactInformation;
    
   [self.navigationController pushViewController:detailTableViewController animated:true];
}




@end
