//
//  FibonacciViewController.m
//  Fibonacci
//
//  Created by Todos los demas que no son Daff on 20/2/17.
//  Copyright © 2017 Todos los demas que no son Daff. All rights reserved.
//

#import "FibonacciViewController.h"
#import "FibonacciTableViewCell.h"

@interface FibonacciViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
  @property (atomic, strong) NSMutableArray *fibNumbers;
@end

@implementation FibonacciViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    [self Fibonacci];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/*
     Resultado:
     Calcula los numeros de Fibonacci hasta el 10000.
     */

-(void)Fibonacci
{
    // Con la iteracion 21, ya obtuvo un numero de
    // Fibonacci mayor a 10000
    int range = 25;
    self.fibNumbers = [NSMutableArray new];
    for (int k =0; k< range; k++)
    {
        if(k<2)
        {
            [self.fibNumbers addObject:[NSString stringWithFormat:@"%d",k]];
            continue;
        }
        else
        {
            int fib = [[self.fibNumbers objectAtIndex:k-2] intValue] +
            [[self.fibNumbers objectAtIndex:k-1] intValue];
            [self.fibNumbers addObject:[NSString stringWithFormat:@"%d",fib]];
        }
    }
    //NSLog(@"%@",self.fibNumbers);
} // Fibonacci

- (void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:@"FibonacciTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"FibonacciTableViewCell"];
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.fibNumbers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FibonacciTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FibonacciTableViewCell"];
    NSString *numberToDraw = self.fibNumbers[indexPath.row];
    [cell setupCellWithNumber:numberToDraw];
    return cell;
}


/*
 - (void) loadArray{
 self.dataSource = [NSMutableArray new];
 for(int i = 0; i < 500; i++){
 int currentResult = i + 1;
 if ((currentResult % 2) == 0) {
 // number is even
 [self.dataSource addObject:[NSString stringWithFormat:@"%d", i]];
 }
 }
 }
 */
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}





@end
