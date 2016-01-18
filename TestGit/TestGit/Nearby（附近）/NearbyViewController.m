//
//  NearbyViewController.m
//  TestGit
//
//  Created by apple on 16/1/18.
//  Copyright © 2016年 Adapter. All rights reserved.
//

#import "NearbyViewController.h"

@interface NearbyViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *baseTableView;
@property (weak, nonatomic) IBOutlet UIButton *cateButton;
@property (weak, nonatomic) IBOutlet UIButton *locationBtn;
@property (weak, nonatomic) IBOutlet UIButton *sortBtn;
@property (weak, nonatomic) IBOutlet UIButton *chooseBtn;
@end

@implementation NearbyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView* headView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 100)];
    headView.backgroundColor=[UIColor redColor];
    self.baseTableView.tableHeaderView=headView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -- fourCategroy
- (IBAction)chooseCate:(UIButton *)sender {
    sender.selected=YES;
    self.sortBtn.selected=NO;
    self.chooseBtn.selected=NO;
    self.locationBtn.selected=NO;
}
- (IBAction)chooseLocation:(UIButton *)sender {
    sender.selected=YES;
    self.cateButton.selected=NO;
    self.sortBtn.selected=NO;
    self.cateButton.selected=NO;
}
- (IBAction)chooseSort:(UIButton *)sender {
    sender.selected=YES;
    self.cateButton.selected=NO;
    self.chooseBtn.selected=NO;
    self.locationBtn.selected=NO;
}
- (IBAction)chooseChoose:(UIButton *)sender {
    sender.selected=YES;
    self.cateButton.selected=NO;
    self.sortBtn.selected=NO;
    self.locationBtn.selected=NO;
}

#pragma mark -- UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 10;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell=[UITableViewCell new];
    cell.textLabel.text=@"cell";
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 20;
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
