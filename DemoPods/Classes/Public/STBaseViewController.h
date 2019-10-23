//
//  STBaseViewController.h
//  DemoPods
//
//  Created by Tommy-mac on 2019/10/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface STBaseViewController : UIViewController

@property (nonatomic, strong) NSString *memberID;
@property (nonatomic, strong) UIImageView *imageView;
- (UIImage*)getImageName:(NSString*)name;
@end

NS_ASSUME_NONNULL_END
