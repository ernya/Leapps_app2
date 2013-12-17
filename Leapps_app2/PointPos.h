//
//  Point.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 17/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PointPos : NSObject
{
    NSMutableDictionary *data;
}

@property (strong, nonatomic) NSMutableDictionary *data;

- (PointPos *) initWithX:(int) x andY: (int) y;

@end
