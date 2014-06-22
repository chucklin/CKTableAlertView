//
//  CKTableAlertView.h
//  CKAlertView
//
//  Created by Chuck Lin on 6/22/14.
//  Copyright (c) 2014 Chuck. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CKTableAlertView;

@protocol CKTableAlertViewDelegate
- (void)tableAlert:(CKTableAlertView *)tableAlert didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
@end

@interface CKAlertView : UIView
- (void) show;
- (void) hide;
@end

@interface CKTableAlertView : CKAlertView <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, retain) NSObject<CKTableAlertViewDelegate> *delegate;
- (id) initWithArray: (NSArray*) data title:(NSString*) title hasCancelButton:(Boolean) hasCancelButton;
@end