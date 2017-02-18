//
//  PrimeNumbersViewController.m
//  Quiz3
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import "PrimeNumbersViewController.h"
#import "PrimeCustomTableViewCell.h"

@interface PrimeNumbersViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tablaPrimos;
@property (strong, atomic) NSMutableArray *dataSource;

@end

@implementation PrimeNumbersViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//===========

// Numeros primos en el arreglo
-(void) initializeDataSouce {
    self.dataSource = [NSMutableArray new];
    for (int i = 1; i < 1000; i++) {
        // Caso trivial, numero uno
        
        if (i % 2 == 0) {
            [self.dataSource addObject:[NSString stringWithFormat:@"%d", i]];
        }
    }
}





-(void)registerCustomCell {
    UINib *nib = [UINib nibWithNibName:@"PrimeCustomTableViewCell" bundle:nil];
    [self.tablaPrimos registerNib:nib forCellReuseIdentifier:@"PrimeCustomTableViewCell"];
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PrimeCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PrimeCustomTableViewCell" ];
    
    NSString *numberToDraw = self.dataSource[indexPath.row];
    [cell ponerNumACelda:numberToDraw];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}

//===========



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
