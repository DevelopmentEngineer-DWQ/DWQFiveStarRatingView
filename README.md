##DWQFiveStarRatingView
一个超级好用的五星好评自定义控件



##DWQFiveStarRatingView如何使用？

*首先将DWQFivestarRating文件夹拖入项目中调用方法有两种：

    *  链式调用（代码示例见下）
```javascript
   [DWQQRatingView init ]
   .frameChain（CGPointMake（60，100），50）
   .canTouchChain（YES）
   .needIntValueChain（YES）
   .scoreNumChain（@ 4）
   .scroreBlockChain（^（NSNumber * scoreNumber）{
   NSLog（@“ ％@ ”，scoreNumber）;
   }）。superViewChain（self.view）;
```
    *  普通调用 （代码示例见下）
```javascript
DWQRatingView *start2=[DWQRatingView initWithPoint:CGPointMake(Screenwidth/2-70, 230) withSize:30];
    
    [self.view addSubview:start2];
    start2.needIntValue=NO;   //是否整数显示，默认整数显示
    start2.canTouch=YES;//是否可以点击，默认为NO
    //start2.scoreNum=@4;//星星显示个数
    self.start2.normalColorChain([UIColor redColor]);
    start2.highlightColorChian([UIColor greenColor]);
    
    start2.scroreBlock=^(NSNumber *number){
    
        NSLog(@"返回的分数");
    
    };
```
##有问题反馈
在使用中有任何问题，欢迎反馈给我，可以用以下联系方式跟我交流

* 邮件(duwenquan0414@gmail.com,)
* QQ: 439878592
