//
//  CategoryViewController.m
//  News
//
//  Created by Cesar Brenes on 2/18/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "CategoryViewController.h"
#import "CategoryTableViewCell.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "Category.h"
#import "NewsViewController.h"
#import "Dog.h"


@interface CategoryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *categoryArray;
@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[CategoryTableViewCell getClassName]];
    [self initializeCategoryArray];
}

-(void)initializeCategoryArray{
    Dog *d1 = [[Dog alloc] initWithName:@"Akon" image:@"akon" color:@"NegroGris" location:@"Alajuela" age:@"6 meses" contactInformation:@"akon@dogs.com" ];
    Dog *d2 = [[Dog alloc] initWithName:@"Berk" image:@"berk" color:@"Negro Carbon" location:@"Heredia" age:@"6 meses" contactInformation:@"berk@dogs.com" ];
    Dog *d3 = [[Dog alloc] initWithName:@"Cela" image:@"cela" color:@"Tipico Negro rojo" location:@"Cartago" age:@"6 meses" contactInformation:@"cela@dogs.com" ];
    Dog *d4 = [[Dog alloc] initWithName:@"Diana" image:@"diana" color:@"Azabaches" location:@"San Jose" age:@"6 meses" contactInformation:@"diana@dogs.com" ];
//    Category *firstCategory = [[Category alloc] initWithName:@"Sucesos" imageName:@"incident"];
//    Category *secondCategory = [[Category alloc] initWithName:@"Deportes" imageName:@"sports"];
//    Category *thirdCategory = [[Category alloc] initWithName:@"Tecnología" imageName:@"technology"];
//    Category *fourthCategory = [[Category alloc] initWithName:@"Econonomía" imageName:@"economy"];
    self.categoryArray = [[NSMutableArray alloc] initWithObjects:d1, d2,d3,d4,nil];
    
}


#pragma mark - TABLE VIEW DELEGATE
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.categoryArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CategoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[CategoryTableViewCell getClassName]];
    //Category *currentCategory = self.categoryArray[indexPath.row];
    //[cell setupCellWithCategory:currentCategory];
    Dog *currentDog = self.categoryArray[indexPath.row];
    [cell setupCellWithCategory:currentDog];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NewsViewController *newsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NewsViewController"];
    Dog *dogSelected = self.categoryArray[indexPath.row];
    newsViewController.dogSelected = dogSelected;
    NSLog(@"Entra a table view de categoryviewController");
    [self.navigationController pushViewController:newsViewController animated:true];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}


@end
