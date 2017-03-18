//
//  AddItemViewController.m
//  QuizClase8
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController ()
  @property (weak, nonatomic) IBOutlet UITextField *name;
  @property (weak, nonatomic) IBOutlet UITextField *quantity;
@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
- (IBAction)dismissKeyboard:(id)sender {
    [self.view endEditing:YES];
}


/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
