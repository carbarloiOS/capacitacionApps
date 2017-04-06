//
//  NewsViewController.m
//  News
//
//  Created by Cesar Brenes on 2/18/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "NewsViewController.h"
#import "Category.h"
#import "NewsDetailTableViewController.h"
#import "NewsTableViewCell.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "Dog.h"

@interface NewsViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.dogSelected.name;
    //[self addNewsButton];
    [self.tableView registerCustomCellWithName:[NewsTableViewCell getClassName]];
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
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewsAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void)addNewsAction{
    NewsDetailTableViewController *newsDetailTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NewsDetailTableViewController"];
    newsDetailTableViewController.dogSelected = self.dogSelected;
    [self.navigationController pushViewController:newsDetailTableViewController animated:true];
}


#pragma mark - TABLE VIEW DELEGATES
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

// Se intenta agregar los datos del perro al custom cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[NewsTableViewCell getClassName]];
    [cell setupCellWithNews:self.dogSelected];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}



@end
