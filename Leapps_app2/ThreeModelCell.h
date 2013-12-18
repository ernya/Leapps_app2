//
//  ThreeModelCell.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 18/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThreeModelCell : UITableViewCell
- (void) setFirstModel: (NSString *) name withImage: (UIImage *) image;
- (void) setSecondModel: (NSString *) name withImage: (UIImage *) image;
- (void) setThirdModel: (NSString *) name withImage: (UIImage *) image;

@property (weak, nonatomic) UIImage *_firstImage;
@property (weak, nonatomic) NSString *_firstName;
@property (weak, nonatomic) UIImage *_secondImage;
@property (weak, nonatomic) NSString *_secondName;
@property (weak, nonatomic) UIImage *_thirdImage;
@property (weak, nonatomic) NSString *_thirdName;

@property (strong, nonatomic) UIImageView *_imageView1;
@property (strong, nonatomic) UIImageView *_imageView2;
@property (strong, nonatomic) UIImageView *_imageView3;

@property (strong, nonatomic) UILabel *_label1;
@property (strong, nonatomic) UILabel *_label2;
@property (strong, nonatomic) UILabel *_label3;


@end
