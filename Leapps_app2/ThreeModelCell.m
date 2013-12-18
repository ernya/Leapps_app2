//
//  ThreeModelCell.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 18/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "ThreeModelCell.h"

@implementation ThreeModelCell

@synthesize _firstImage, _imageView1, _firstName, _imageView2, _imageView3, _label1, _label2, _label3, _secondImage, _secondName, _thirdImage, _thirdName;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if (self) {
        // Initialization code
    }
    
    _imageView1 = [[UIImageView alloc] init];
    _imageView2 = [[UIImageView alloc] init];
    _imageView3 = [[UIImageView alloc] init];
    _label1 = [[UILabel alloc] init];
    _label2 = [[UILabel alloc] init];
    _label3 = [[UILabel alloc] init];
    
    return self;
}

- (void) setFirstModel: (NSString *) name withImage: (UIImage *) image
{
    _firstImage = image;
    _firstName = name;
    _label1.text = _firstName;
    _imageView1.image = _firstImage;
}

- (void) setSecondModel: (NSString *) name withImage: (UIImage *) image
{
    _secondImage = image;
    _secondName = name;
    _label2.text = _secondName;
    _imageView2.image = _secondImage;
}

- (void) setThirdModel: (NSString *) name withImage: (UIImage *) image
{
    _thirdImage = image;
    _thirdName = name;
    _label3.text = _thirdName;
    _imageView3.image = _thirdImage;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
}

@end
