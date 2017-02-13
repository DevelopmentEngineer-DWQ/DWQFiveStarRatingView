//
//  ViewController.m
//  Five-star-rating
//
//  Created by 杜文全 on 15/2/13.
//  Copyright © 2015年 com.sdsj.duwenquan. All rights reserved.
//
#define  Screenwidth [UIScreen mainScreen].bounds.size.width
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     DWQFivestarRating使用方法：(两种调用方法，在DWQRatingView.h中有说明)
     1、首先将DWQFivestarRating文件夹拖入项目中，然后在所需要的类中引入 #import "DWQRatingView.h"，声明一个属性
     2、初始化一个DWQRatingView
      DWQRatingView *star=[DWQRatingView initWithPoint:CGPointMake(50, 230) withSize:30]
     
     3.设置DWQRatingView的frame，起作用的为heigit
     
     4.各调用方法和属性设置在DWQRatingView.h文件中有具体说明
     
     */
    [self createUI];
}

-(void)createUI{
    
    UILabel *title=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, Screenwidth, 20)];
    title.text=@"五星好评-杜文全（iOS高级开发工程师）";
    title.textColor=[UIColor blackColor];
    title.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:title];
  //普通调用方法
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(0, 100, Screenwidth, 20)];
    label1.text=@"不可点击的星级评价";
    label1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:label1];
    
    self.start1=[DWQRatingView initWithPoint:CGPointMake(Screenwidth/2-70, 130) withSize:30];
    [self.view addSubview:self.start1];
    self.start1.needIntValue=YES;   //是否整数显示，默认整数显示
    self.start1.canTouch=NO;//是否可以点击，默认为NO
    self.start1.scoreNum=@4;//星星显示个数
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(0, 200, Screenwidth, 20)];
    label2.text=@"可点击的星级评价,可为小数,可改颜色";
    label2.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:label2];
    
   // self.start2=[[DWQRatingView alloc]initWithFrame:CGRectMake(Screenwidth/2-30, CGRectGetMaxY(label2.frame)+30, 20, 30)];
    self.start2=[DWQRatingView initWithPoint:CGPointMake(Screenwidth/2-70, 230) withSize:30];
    
    [self.view addSubview:self.start2];
    self.start2.needIntValue=NO;   //是否整数显示，默认整数显示
    self.start2.canTouch=YES;//是否可以点击，默认为NO
    //self.start2.scoreNum=@4;//星星显示个数
    self.start2.normalColorChain([UIColor redColor]);
    self.start2.highlightColorChian([UIColor greenColor]);
    
    self.start2.scroreBlock=^(NSNumber *number){
    
        NSLog(@"返回的分数");
    
    };
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.start2.frame), Screenwidth, 100)];
    [self.view addSubview:label3];
    label3.textAlignment=NSTextAlignmentCenter;
    label3.textColor=[UIColor blueColor];
    label3.numberOfLines=0;
    label3.text=@"如果您感觉不错，请在GitHub给予点赞，更有更多不错的开源项目  https://github.com/DevelopmentEngineer-DWQ";
   //链式调用方法示例
  /*
   [GQRatingView的init ]
   .frameChain（CGPointMake（50，100），50）
   .canTouchChain（YES）
   .needIntValueChain（YES）
   .scoreNumChain（@ 5）
   .scroreBlockChain（^（NSNumber * scoreNumber）{
   NSLog（@“ ％@ ”，scoreNumber）;
   }）。superViewChain（self.view）;
   
   */
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
