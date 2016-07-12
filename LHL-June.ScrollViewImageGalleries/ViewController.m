//
//  ViewController.m
//  LHL-June.ScrollViewImageGalleries
//
//  Created by Asuka Nakagawa on 2016-07-11.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (nonatomic) NSArray *listOfImages;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.myScrollView.delegate = self;

    // Create three UIImageView and place them inside the UIScrollView next to each other
    self.listOfImages = @[
                          [UIImage imageNamed:@"Lighthouse-in-Field"],
                          [UIImage imageNamed:@"Lighthouse-night"],
                          [UIImage imageNamed:@"Lighthouse-zoomed"]
                          ];
    CGFloat originX = 0;
    for (int i = 0; i <[self.listOfImages count]; i++) {

        UIImageView *imageView = [[UIImageView alloc] initWithImage:self.listOfImages[i]];
        imageView.frame = CGRectMake(originX, 0, self.view.frame.size.width, self.view.frame.size.height);
        
        // imageView1 next to imageView2 and imageView3
        originX += self.view.frame.size.width;
        
        [self.myScrollView addSubview:imageView];
    }
    //Paging galleries
    self.myScrollView.contentSize = CGSizeMake(originX, self.myScrollView.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
