//
//  CMCollectionViewSupport.h
//  UIClockMkII
//
//  Created by Tim on 23/10/2013.
//  Copyright (c) 2013 Charismatic Megafauna Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const CMCollectionViewCellIdentifier;

@interface CMCollectionViewSupport : NSObject <UICollectionViewDelegate, UICollectionViewDataSource>

-(void)setupData;

@end
