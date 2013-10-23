//
//  CMViewController.m
//  UIClockMkII
//
//  Created by Tim on 22/10/2013.
//  Copyright (c) 2013 Charismatic Megafauna Ltd. All rights reserved.
//

#import "CMClockViewController.h"
#import "CMCollectionViewSupport.h"

@interface CMClockViewController ()
@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) CMCollectionViewSupport *cvSupporter;
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation CMClockViewController

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure supporting class for collection view
    self.cvSupporter = [[CMCollectionViewSupport alloc] init];
    [self.cvSupporter setupData];
    
    // Setup collection view
    [self configureCollectionView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UICollectionView methods

-(void)configureCollectionView {
    
    // Setup data source and delegate
    [self.collectionView setDelegate:self.cvSupporter];
    [self.collectionView setDataSource:self.cvSupporter];

    // Register cells
    [self.collectionView registerNib:[UINib nibWithNibName:@"CMCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:CMCollectionViewCellIdentifier];
    
    // Configure collection view flow layout
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setItemSize:CGSizeMake(100.0f, 100.0f)];
    [flowLayout setMinimumInteritemSpacing:25.0f];
    [flowLayout setMinimumLineSpacing:25.0f];
    [self.collectionView setCollectionViewLayout:flowLayout];
    
}

@end
