//
//  CMCollectionViewSupport.m
//  UIClockMkII
//
//  Created by Tim on 23/10/2013.
//  Copyright (c) 2013 Charismatic Megafauna Ltd. All rights reserved.
//

#import "CMCollectionViewSupport.h"

NSString *const CMCollectionViewCellIdentifier = @"CMCollectionViewCellIdentifier";

@interface CMCollectionViewSupport ()
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation CMCollectionViewSupport

#pragma mark -
#pragma mark Housekeeping methods

-(void)setupData {
    
    NSArray *hoursArray = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12"];
    NSArray *handsArray = @[@"hours", @"seconds", @"minutes"];
    
    self.dataArray = [NSMutableArray arrayWithObjects:hoursArray, handsArray, nil];
    
}

#pragma mark -
#pragma mark UICollectionViewDataSource methods

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.dataArray count];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSArray *innerArray = [self.dataArray objectAtIndex:section];
    return [innerArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CMCollectionViewCellIdentifier forIndexPath:indexPath];
    
    NSArray *innerArray = [self.dataArray objectAtIndex:indexPath.section];
    
    UILabel *cellLabel = (UILabel *)[cell viewWithTag:1000];
    [cellLabel setText:[innerArray objectAtIndex:indexPath.row]];

    return cell;
    
}

#pragma mark -
#pragma mark UICollectionViewDelegate methods


@end
