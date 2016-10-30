//
//  ViewController.m
//  tarea3
//
//  Created by Kristel Villalobos on 9/9/16.
//  Copyright © 2016 Kristel Villalobos. All rights reserved.
//

#import "ViewController.h"
#import "ResultadoTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtNumber;
@property (weak, nonatomic) IBOutlet UIButton *bntEnviar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextAction:(id)sender {

    if ( [self.txtNumber.text intValue] < 1 ) {
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Alert!"
                              message:@"No se deben digitar numeros menores a 1"
                              delegate:self
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil, nil];
        [alert show];
        
        return;
    }
    ResultadoTableViewController *resultadoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultadoTableViewController"];
    
    [self.navigationController pushViewController:resultadoViewController animated:YES];
    [resultadoViewController fillArray:self.txtNumber.text];

}

 

@end
