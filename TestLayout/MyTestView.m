//
//  MyTestView.m
//  TestLayout
//
//  Created by Nicholas DInnocenzo on 10/3/14.
//  Copyright (c) 2014 noobslimited. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "MyTestView.h"

@interface MyTestView ()

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIView *innerView;
@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UILabel *label3;
@property (nonatomic, strong) UILabel *label4;
@property (nonatomic, strong) UILabel *label5;
@property (nonatomic, strong) UILabel *label6;

@end

@implementation MyTestView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

_scrollView = [[UIScrollView alloc] init];
_innerView = [[UIView alloc] init];
_label1 = [[UILabel alloc] init];
_label2 = [[UILabel alloc] init];
_label3 = [[UILabel alloc] init];
_label4 = [[UILabel alloc] init];
_label5 = [[UILabel alloc] init];
_label6 = [[UILabel alloc] init];

    

    
    
NSString *randomText = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum augue nunc, consectetur in velit sit amet, cursus facilisis leo. Praesent efficitur odio at enim interdum, id tristique nibh fermentum. Aenean tristique vel tortor vel imperdiet. Vestibulum hendrerit porta justo mattis eleifend. Sed accumsan ornare rutrum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In nec turpis id eros scelerisque molestie nec eget massa.Maecenas neque lorem, fringilla nec enim tempus, ullamcorper imperdiet urna. Praesent ac orci lorem. Quisque nec nulla eu nunc pharetra sagittis sed vitae mauris. Duis vitae efficitur urna.  Aenean ac nisi id mauris fermentum sollicitudin sed id enim. Pellentesque eget dictum nunc, in pellentesque urna. Nunc quis massa nec ligula hendrerit cursus. Nunc posuere velit odio, at aliquam mi pretium nec. Vestibulum et tellus rutrum, dapibus nunc sed, facilisis diam. Vestibulum iaculis condimentum neque sed faucibus. Phasellus tincidunt ex quis sem viverra bibendum. Quisque in arcu vulputate, dapibus odio vitae, vestibulum ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus tincidunt velit congue leo ultrices, sit amet dignissim libero maximus. Morbi malesuada eros sit amet turpis pellentesque, quis ullamcorper lacus facilisis. Ut sollicitudin ante nec tellus pharetra, vitae ultrices diam interdum. Cras quis varius tortor. Donec turpis odio, egestas in scelerisque et, elementum ut ipsum. Suspendisse potenti. Integer volutpat nunc eros, sed dictum velit finibus vel. Maecenas sapien enim, eleifend vitae tempus in, dictum at ligula. In dapibus at dui id aliquet. Cras vitae nunc sem. Sed congue vulputate rhoncus. Vivamus sollicitudin ante sapien, non euismod urna aliquam facilisis. Morbi dignissim, ex in rhoncus aliquet, dolor massa pharetra velit, sit amet imperdiet mi tortor eget nunc. Morbi tortor nibh, posuere ac lectus id, blandit molestie diam. Morbi bibendum ullamcorper diam, et ultricies urna volutpat nec. In eget dolor a elit convallis viverra. Nullam tincidunt ligula ac magna congue, sed pulvinar erat suscipit." ;

[_label1 setText:randomText];
[_label2 setText:randomText];
[_label3 setText:randomText];
[_label4 setText:randomText];
[_label5 setText:randomText];
[_label6 setText:randomText];

[_label1 setBackgroundColor:[UIColor whiteColor]];
[_label2 setBackgroundColor:[UIColor whiteColor]];
[_label3 setBackgroundColor:[UIColor whiteColor]];
[_label4 setBackgroundColor:[UIColor whiteColor]];
[_label5 setBackgroundColor:[UIColor whiteColor]];
[_label6 setBackgroundColor:[UIColor whiteColor]];


_label1.numberOfLines = 0;
_label2.numberOfLines = 0;
_label3.numberOfLines = 0;
_label4.numberOfLines = 0;
_label5.numberOfLines = 0;
_label6.numberOfLines = 0;


_scrollView.translatesAutoresizingMaskIntoConstraints = NO;
_innerView.translatesAutoresizingMaskIntoConstraints = NO;
_label1.translatesAutoresizingMaskIntoConstraints = NO;
_label2.translatesAutoresizingMaskIntoConstraints = NO;
_label3.translatesAutoresizingMaskIntoConstraints = NO;
_label4.translatesAutoresizingMaskIntoConstraints = NO;
_label5.translatesAutoresizingMaskIntoConstraints = NO;
_label6.translatesAutoresizingMaskIntoConstraints = NO;


[self.view addSubview:_scrollView];
[_scrollView addSubview:_innerView];
[_innerView addSubview:_label1];
[_innerView addSubview:_label2];
[_innerView addSubview:_label3];
[_innerView addSubview:_label4];
[_innerView addSubview:_label5];
[_innerView addSubview:_label6];

[self.view setBackgroundColor:[UIColor darkGrayColor]];

//[_scrollView exerciseAmbiguityInLayout];

[self updateViewConstraints];

}

-(void)updateViewConstraints {
    
    [super updateViewConstraints];
    
    //[self.view removeConstraints:self.view.constraints];
    
    NSLayoutConstraint *constraint;
    
    //set width of questionView
    constraint = [NSLayoutConstraint
                  constraintWithItem:_innerView
                  attribute:NSLayoutAttributeLeading
                  relatedBy:0
                  toItem:self.view
                  attribute:NSLayoutAttributeLeading
                  multiplier:1.0f
                  constant:0];
    
    [self.view addConstraint:constraint];
    
    //set width of questionView
    constraint = [NSLayoutConstraint
                  constraintWithItem:_innerView
                  attribute:NSLayoutAttributeTrailing
                  relatedBy:0
                  toItem:self.view
                  attribute:NSLayoutAttributeTrailing
                  multiplier:1.0f
                  constant:0];
    
    [self.view addConstraint:constraint];
    
    NSDictionary *viewsDictionary =
    NSDictionaryOfVariableBindings(_scrollView, _innerView, _label1, _label2, _label3, _label4, _label5, _label6);
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|[_scrollView]|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|[_scrollView]|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
    
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|[_innerView]|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|-[_label1]-|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|-[_label2]-|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|-[_label3]-|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|-[_label4]-|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|-[_label5]-|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|-[_label6]-|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|-[_label1]-[_label2]-[_label3]-[_label4]-[_label5]-[_label6]-|"
                               options:0
                               metrics:0
                               views:viewsDictionary]];
    
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    
    
}



@end
