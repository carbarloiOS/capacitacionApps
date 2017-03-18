//
//  ItemsViewController.m
//  QuizClase8
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import "ItemsViewController.h"
#import "AddItemViewController.h"
#import "ItemCustomTableViewCell.h"

@interface ItemsViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Items";
    [self  addNewsButton];
    //[self.tableView registerCustomCellWithName:[ItemCustomTableViewCell getClassName]];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"ItemCustomTableViewCell"];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addNewsButton{
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItemsAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void)addItemsAction{
    AddItemViewController *addItemViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AddItemViewController"];
    addItemViewController.itemSelected = self.itemSelected;
    [self.navigationController pushViewController:addItemViewController animated:true];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    ItemCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[ItemCustomTableViewCell getClassName]];
//    self.tableView
//    Item *item = self.itemSelected.itemArray[indexPath.row];
//    [cell setupCellWithItem:item];
    return nil;//cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
