//
//  ThreeModelCell.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 18/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface ThreeModelCell : UITableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier width: (CGFloat)width2 height: (CGFloat)height2 callback:(SEL) selector handler:(id) handler;

- (void) setFirstModel: (Model *) model;
- (void) setSecondModel: (Model *) model;
- (void) setThirdModel: (Model *) model;

@property (nonatomic) SEL _callback;
@property (weak, nonatomic) id _handler;

@property (weak, nonatomic) Model *_model1;
@property (weak, nonatomic) Model *_model2;
@property (weak, nonatomic) Model *_model3;

@property (strong, nonatomic) UIImageView *_imageView1;
@property (strong, nonatomic) UIImageView *_imageView2;
@property (strong, nonatomic) UIImageView *_imageView3;

@property (strong, nonatomic) UILabel *_label1;
@property (strong, nonatomic) UILabel *_label2;
@property (strong, nonatomic) UILabel *_label3;


@end
