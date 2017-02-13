//
//  NumbersTableViewController.m
//  TableViewDefault
//
//  Created by Todos los demas que no son Daff on 10/2/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import "NumbersTableViewController.h"

@interface NumbersTableViewController ()

@end

@implementation NumbersTableViewController

-(void)initializeTableArray {
    int counter = 0;
    //tipos de inicializacion
    //self.dogsArray=[NSMutableArray new];
    //self.dogsArray = [[NSMutableArray alloc]initWithObjects:@"",@"",@"", nil];
    
    self.tablaArray=[NSMutableArray new];

    for (counter = 0; counter < 100; counter++) {
        NSString *ochoPorNum = [NSString stringWithFormat:@"8 * %d =", counter];
        NSDictionary *tablaDictionary =
        [[NSDictionary alloc]
         initWithObjects:@[ochoPorNum, [NSNumber numberWithInt:counter * 8]] forKeys:@[@"ochoPorNum", @"resultado"]
         ];
        [self.tablaArray addObject:tablaDictionary];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeTableArray];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.tablaArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *resultadoActual = self.tablaArray[indexPath.row];
    
    cell.textLabel.text = [resultadoActual valueForKey:@"ochoPorNum"];
    cell.detailTextLabel.text=[NSString stringWithFormat:@"%d", [[resultadoActual valueForKey:@"resultado"] intValue]];
    //cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long) indexPath.row];//  @"Prueba";
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
