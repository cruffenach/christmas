//
//  CCRootViewController.m
//  Christmas
//
//  Created by Collin Ruffenach on 11/3/12.
//  Copyright (c) 2012 Notion HQ. All rights reserved.
//

#import "CCRootViewController.h"

@interface CCView : SYPageView

@end

@implementation CCView

@end

@interface CCRootViewController ()

@end

@implementation CCRootViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.title = @"Paginator";
	self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
	
	self.view.backgroundColor = [UIColor blackColor];
	self.paginatorView.pageGapWidth = 30.0f;
}


#pragma mark - SYPaginatorViewDataSource

- (NSInteger)numberOfPagesForPaginatorView:(SYPaginatorView *)paginatorView {
	return 99999;
}

- (CCView *)paginatorView:(SYPaginatorView *)paginatorView viewForPageAtIndex:(NSInteger)pageIndex {
	static NSString *identifier = @"identifier";
	
	CCView *view = (CCView *)[paginatorView dequeueReusablePageWithIdentifier:identifier];
	if (!view) {
		view = [[CCView alloc] initWithReuseIdentifier:identifier];
        view.backgroundColor = [UIColor colorWithRed:((arc4random() % 100) * 0.01)
                                               green:((arc4random() % 100) * 0.01)
                                                blue:((arc4random() % 100) * 0.01)
                                               alpha:1.0];
	}
	
	return view;
}


@end
