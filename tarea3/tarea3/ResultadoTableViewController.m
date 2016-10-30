//
//  ResultadoTableViewController.m
//  tarea3
//
//  Created by Kristel Villalobos on 9/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//

#import "ResultadoTableViewController.h"
#import "ResTableViewCell.h"

@interface ResultadoTableViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic,strong) NSMutableArray *fiboArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ResultadoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    
}

-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:@"ResTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"ResTableViewCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) fillArray:(NSString*)num{
 
    self.fiboArray =  [[NSMutableArray alloc] init];
    int numero = [num intValue];
    for (int i=0;i<numero;i++){
        
        [self.fiboArray addObject:[NSString stringWithFormat:@"%d",[self fibonacci:i] ]];
        
    }
    
}

-(int)fibonacci: (int) num{
    
    
    if (num>1){
        return ([self fibonacci:(num-1)] + [self fibonacci:(num-2)]);
    }
    else {
        return 1;
    }
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 
    return 1;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 165;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.fiboArray count];
}
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ResTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ResTableViewCell"];
    [cell configureCellWithNumber: [self.fiboArray objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
