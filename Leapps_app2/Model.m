//
//  Model.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 17/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "Model.h"

@implementation Model
@synthesize backgroundImage, data, points;

- (Model *) initWithName: (NSString *) name Image:(UIImage *) image Points:(NSMutableArray *) points2
{
    data = [[NSMutableDictionary alloc] init];
    [data setObject:name forKey:@"Name"];
    backgroundImage = image;
//    [data setObject:image forKey:@"Image"];
    points = points2;
    return self;
}

@end

