//
//  CachedURLResponse.h
//  NSURLProtocolExample
//
//  Created by Rocir Marcos Leite Santiago on 11/30/13.
//  Copyright (c) 2013 Rocir Santiago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface CachedURLResponse : NSManagedObject

@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSString * mimeType;
@property (nonatomic, retain) NSString * encoding;
@property (nonatomic, retain) NSData * data;


@end
