//
//  ThreeModelCell.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 18/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "ThreeModelCell.h"

@implementation ThreeModelCell

@synthesize _callback, _imageView1, _label1, _handler, _imageView2, _imageView3, _label2, _label3, _model1, _model2, _model3;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    return self;
}

- (void) handleTap1: (UITapGestureRecognizer *) recognizer
{
    if (CGRectContainsPoint(_imageView1.frame, [recognizer locationInView:self]))
    {
        NSMethodSignature *signature = [[_handler class] instanceMethodSignatureForSelector:_callback];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        [invocation setSelector:_callback];
        [invocation setArgument:(&_model1) atIndex:2];
        [invocation invokeWithTarget:_handler];
        return ;
    }
    if (CGRectContainsPoint(_imageView2.frame, [recognizer locationInView:self]))
    {
        NSMethodSignature *signature = [[_handler class] instanceMethodSignatureForSelector:_callback];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        
        [invocation setSelector:_callback];
        [invocation setArgument:(&_model2) atIndex:2];
        [invocation invokeWithTarget:_handler];
        return ;
    }
    if (CGRectContainsPoint(_imageView3.frame, [recognizer locationInView:self]))
    {
        NSMethodSignature *signature = [[_handler class] instanceMethodSignatureForSelector:_callback];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        
        [invocation setSelector:_callback];
        [invocation setArgument:(&_model3) atIndex:2];
        [invocation invokeWithTarget:_handler];
        return ;
    }
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier width: (CGFloat)width2 height: (CGFloat)height2 callback:(SEL)selector handler:(id)handler
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if (self) {
        // Initialization code
    }
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    _handler = handler;
    _callback = selector;
    _imageView1 = [[UIImageView alloc] init];
    _imageView2 = [[UIImageView alloc] init];
    _imageView3 = [[UIImageView alloc] init];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap1:)];
    _label1 = [[UILabel alloc] init];
    _label2 = [[UILabel alloc] init];
    _label3 = [[UILabel alloc] init];
    [self addGestureRecognizer:tap];
    
    _label1.textAlignment = NSTextAlignmentCenter;
    _label2.textAlignment = NSTextAlignmentCenter;
    _label3.textAlignment = NSTextAlignmentCenter;
    
    CGFloat width = width2;
    CGFloat height = height2;
    
    CGRect size;
    size.origin.x = 5;
    size.origin.y = 5;
    size.size.height = height - 50;
    size.size.width = width / 3 - 5 * 6;
    [_imageView1 setFrame:size];
    size.origin.x = 15 + size.size.width;
    [_imageView2 setFrame:size];
    size.origin.x = 25 + 2 * size.size.width;
    [_imageView3 setFrame:size];
    
    size.size.height = 30;
    size.origin.x = 5;
    size.origin.y = height - 35;
    [_label1 setFrame:size];
    size.origin.x = 15 + width / 3 - 5 * 6;
    [_label2 setFrame:size];
    size.origin.x = 25 + 2 * (width / 3 - 5 * 6);
    [_label3 setFrame:size];
    
    [self addSubview:_imageView1];
    [self addSubview:_label1];
    [self addSubview:_imageView2];
    [self addSubview:_label2];
    [self addSubview:_imageView3];
    [self addSubview:_label3];
    return self;
}

- (void) setFirstModel: (Model *)model;
{
    _model1 = model;
    _label1.text = [_model1.data objectForKey:@"Name"];
    _imageView1.image = _model1.backgroundImage;
}

- (void) setSecondModel: (Model *)model
{
    _model2 = model;
    _label2.text = [_model2.data objectForKey:@"Name"];
    _imageView2.image = _model2.backgroundImage;
}

- (void) setThirdModel: (Model *)model
{
    _model3 = model;
    _label3.text = [_model3.data objectForKey:@"Name"];
    _imageView3.image = _model3.backgroundImage;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
}

@end
