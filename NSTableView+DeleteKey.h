//
//  NSTableView+DeleteKey.h
//  chromifier
//
//  Created by Evadne Wu on 5/6/10.
//  Copyright 2010 Iridia Productions. All rights reserved.
//

#import <Cocoa/Cocoa.h>





@protocol DeleteKeyDelegate

- (void) deleteKeyPressed:(NSTableView *)aTableView onRow:(int)rowIndex;

@end

@interface NSTableView (DeleteKey)

@end
