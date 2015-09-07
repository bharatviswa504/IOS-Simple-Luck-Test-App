//
//  ViewController.m
//  Task1
//
//  Created by Viswanadham, Bharath (UMKC-Student) on 9/1/15.
//  Copyright (c) 2015 Viswanadham, Bharath (UMKC-Student). All rights reserved.
//

#import "ViewController.h"
#import "stdlib.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *warningMsg;
@property (weak, nonatomic) IBOutlet UITextField *inputFromUser;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)textEnter:(id)sender {
    _warningMsg.text=@"Enter Any Number b/w 1-100";
}
- (IBAction)testButton:(id)sender {
    UIImage *modelimage = [UIImage imageNamed:@"thumbs_up.jpg"];
    UIImage *modelimage1 = [UIImage imageNamed:@"thumbs-down.png"];
    
    int randomNo=arc4random_uniform(10);
    int rand = [_inputFromUser.text intValue];
    if(randomNo==rand) {
        _imageView.image=modelimage;
    _warningMsg.text=@"Success!! You are Lucky!!!";
    }
    else {
        _imageView.image=modelimage1;
        _warningMsg.text=@"Oops!!! Try Again!!!";
    }
   // _warningMsg.text=@"Logic Should be written Here!!!";
   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)editingBegin:(id)sender {
    _warningMsg.text=@"Info:Enter Any Number b/w 1-10";
}

@end
