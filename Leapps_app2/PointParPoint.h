//
//  PointParPoint.h
//  Leapps_app2
//
//  Created by Alexandre ERNY on 17/12/2013.
//  Copyright (c) 2013 Alexandre ERNY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PointParPoint : NSObject
{
    NSMutableArray  *modelList;
    
    void *gameSession;
}

@property (strong, nonatomic) NSMutableArray *modelList;
@property (nonatomic) void *gameSession;

@end
