//
//  ViewController.m
//  WWCalView
//
//  Created by 王威 on 2017/12/18.
//  Copyright © 2017年 WWin. All rights reserved.
//

#import "ViewController.h"
#import "WWCalVuew.h"
@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textFiled;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property(nonatomic,assign) double aaa;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(noti:) name:@"love" object:nil];
}
-(void)noti:(NSNotification *)noti{
    NSDictionary *dicc = noti.userInfo;
    self.label.text = [dicc objectForKey:@"answer"];
    self.textFiled.text = [dicc objectForKey:@"question"];
//    NSMutableArray *array = [dicc objectForKey:@"aaa"];
//    self.textFiled.text = [array componentsJoinedByString:@""];
//    __weak typeof(self) weakSelf = self;
//    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        if (idx == 0) {
//            weakSelf.aaa = [obj doubleValue];
//        }else{
//                if (idx % 2 == 0) {
//                    if ([[array objectAtIndex:idx - 1] isEqualToString:@"+"]) {
//                        weakSelf.aaa += [obj doubleValue];
//                    }else if ([[array objectAtIndex:idx - 1] isEqualToString:@"-"]){
//                        weakSelf.aaa -= [obj doubleValue];
//                    }else if ([[array objectAtIndex:idx - 1] isEqualToString:@"*"]){
//                        weakSelf.aaa -= [array[idx - 2] doubleValue];
//                        weakSelf.aaa += ([array[idx - 2] doubleValue] * [obj doubleValue]);
//                    }else{
//                        weakSelf.aaa -= [array[idx - 2] doubleValue];
//                        weakSelf.aaa += ([array[idx - 2] doubleValue] / [obj doubleValue]);
//                    }
//                }
//        }
//        [weakSelf performSelectorOnMainThread:@selector(changeUI) withObject:nil waitUntilDone:YES];
//    }];
//    if (array.count == 0) {
//        self.label.text = @"0.00";
//    }
}
-(void)changeUI{
    self.label.text = [NSString stringWithFormat:@"%.2f",self.aaa];
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
