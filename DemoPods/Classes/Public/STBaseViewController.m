//
//  STBaseViewController.m
//  DemoPods
//
//  Created by Tommy-mac on 2019/10/23.
//

#import "STBaseViewController.h"

@interface STBaseViewController ()

@end

@implementation STBaseViewController

#pragma mark - viewWillAppear
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}

- (void)dealloc
{
    NSLog(@"dealloc");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"viewDidLoad");
    NSLog(@"self.memberID=%@",self.memberID);
    UIImage *image = [self getImageName:@"some-image"];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    self.imageView.contentMode = UIViewContentModeCenter;
    [self.view addSubview:self.imageView];
    
    UILabel *tempLabel = [UILabel new];
    tempLabel.frame = CGRectMake(0, 200, self.view.frame.size.width, 100);
    tempLabel.text = self.memberID;
    tempLabel.textColor = [UIColor blackColor];
    tempLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:tempLabel];
    
}

- (UIImage*)getImageName:(NSString*)name
{
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                            stringByAppendingPathComponent:@"/DemoPods.bundle"];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *image = [UIImage imageNamed:@"some-image"
                                inBundle:resource_bundle
           compatibleWithTraitCollection:nil];
    return image;
}


@end
