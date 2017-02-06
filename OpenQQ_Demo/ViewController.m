//
//  ViewController.m
//  OpenQQ_Demo
//
//  Created by admin on 2017/2/6.
//  Copyright © 2017年 AlezJi. All rights reserved.
//http://www.jianshu.com/p/ac4981b634c2
//iOS调用QQ客户端,发起临时会话

#import "ViewController.h"
#import "OpenChatQQHelper.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)openQQAction:(id)sender {

    if ([OpenChatQQHelper isHaveQQ]) {
        [OpenChatQQHelper chatWithQQ:@"727520299"];
    }else{
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"您的设备尚未安装QQ客户端,不能进行QQ临时会话" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:cancelAction];
        [alertController addAction:okAction];
    }
    //注意事项:
    //1.由于'开发文档'中规定app的正常使用不能依赖其他APP,<br>所以在项目中集成此功能的童鞋要注意,<br>在未安装QQ客户端时建议影藏此功能,<br>不然上架有被拒风险.
    //2.我前期上架一个app,便是这样处理的.
}


@end
