//
//  SGRefreshTableView.h
//  7 glyphs Ltd.
//  http://7glyphs.com
//
//  Created by Igor Anany on 4/03/14.
//  Copyright (c) 2014 7 glyphs Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SGRefreshTableView;

@protocol SGRefreshTableViewDelegate <UITableViewDelegate>
@optional
- (void)tableView:(SGRefreshTableView*)tableView didStatrtRefreshing:(UIRefreshControl*)refreshControl;
@end

@interface SGRefreshTableView : UITableView

- (void)endRefreshing;

@end
