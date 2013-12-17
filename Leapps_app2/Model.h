//
//  Model.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 17/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
{
    NSMutableDictionary *data;
    UIImage *backgroundImage;
    NSMutableArray *points;
}

@property (strong, nonatomic) NSMutableDictionary *data;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSMutableArray *points;

- (Model *) initWithName: (NSString *) name Image:(UIImage *) image Points:(NSMutableArray *) points2;
@end
