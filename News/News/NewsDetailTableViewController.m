//
//  NewsDetailTableViewController.m
//  News
//
//  Created by Cesar Brenes on 2/25/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "NewsDetailTableViewController.h"
#import "News.h"
//#import "Category.h"
#import "Dog.h"

@interface NewsDetailTableViewController ()
@property (weak, nonatomic) IBOutlet UITextField *newsTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *newsDescriptionTextView;

@end

@implementation NewsDetailTableViewController
/*
- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSaveButtonToNavigationController];
}


-(void)addSaveButtonToNavigationController{
    UIBarButtonItem *save = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveNews)];
    self.navigationItem.rightBarButtonItem = save;
}

-(void)saveNews{
    News *news = [[News alloc] initWithDate:[NSDate date] title:self.newsTitleTextField.text newsDescription:self.newsDescriptionTextView.text];
//    [self.categorySelected.newsArray addObject:news];
    //[self.dogSelected.dogsArray addObject:news];
    [self.navigationController popViewControllerAnimated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (IBAction)dismissKeyboard:(id)sender {
    [self.view endEditing:YES];
}
*/
@end
