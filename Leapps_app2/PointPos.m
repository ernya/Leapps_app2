//
//  Point.m
//  Leapps_app2
//
//  Created by Alexandre ERNY on 17/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import "PointPos.h"

@implementation PointPos
@synthesize data;

- (PointPos *) initWithX:(int) x andY: (int) y
{
    data = [[NSMutableDictionary alloc] init];
    [data setObject:[NSString stringWithFormat:@"%d", x] forKey:@"x"];
    [data setObject:[NSString stringWithFormat:@"%d", y] forKey:@"y"];
    return self;
}



@end
