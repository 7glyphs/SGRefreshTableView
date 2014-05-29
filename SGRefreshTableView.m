//
//  SGRefreshTableView.h
//  7 glyphs Ltd.
//  http://7glyphs.com
//
//  Created by Igor Anany on 4/03/14.
//  Copyright (c) 2014 7 glyphs Ltd. All rights reserved.
//

#import "SGRefreshTableView.h"

@interface SGRefreshTableView () {
    UIRefreshControl* _refreshControl;
}

- (void)configure;
- (void)refresh:(UIRefreshControl *)refreshControl;
@end

@implementation SGRefreshTableView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configure];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self configure];
    }
    return self;
}

- (void)configure {
    _refreshControl = [[UIRefreshControl alloc] init];
    _refreshControl.tintColor = [UIColor colorWithHex:0x729db3];
    [_refreshControl addTarget:self action:@selector(refresh:) forControlEvents:UIControlEventValueChanged];
    [self addSubview:_refreshControl];
}

#pragma mark - Refreshing

- (void)refresh:(UIRefreshControl *)refreshControl {
    [(id<SGRefreshTableViewDelegate>)self.delegate tableView:self didStatrtRefreshing:refreshControl];
}

- (void)endRefreshing {
    [_refreshControl endRefreshing];
}

@end