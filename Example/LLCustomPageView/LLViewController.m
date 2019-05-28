//
//  LLViewController.m
//  LLCustomPageView
//
//  Created by luyinuo on 05/28/2019.
//  Copyright (c) 2019 luyinuo. All rights reserved.
//

#import "LLViewController.h"

@interface LLViewController ()
@property (nonatomic,strong) CustomPageView *pageView;
@property (nonatomic,strong) NSArray *imageArray;
@end

@implementation LLViewController

- (NSArray *)imageArray{
    if (!_imageArray) {
        _imageArray = @[@"1_book_picture.jpg",@"2_book_picture.jpg",@"3_book_picture.jpg",@"4_book_picture.jpg"];
    }
    return _imageArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageView = [CustomPageView pageViewWithFrame:self.view.bounds];
    self.pageView.contentMode = UIViewContentModeScaleAspectFit;
    self.pageView.imageArray = self.imageArray;
    [self.view addSubview:self.pageView];
}

@end
