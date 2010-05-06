//
//  NSTableView+DeleteKey.m
//  chromifier
//
//  Created by Evadne Wu on 5/6/10.
//  Copyright 2010 monoceros. All rights reserved.
//

#import "NSTableView+DeleteKey.h"


@implementation NSTableView (DeleteKey)





- (void) keyDown:(NSEvent *)event {
	
	if ([[event characters] isEqualToString:@""]) return;
	
	unichar firstChar = [[event characters] characterAtIndex:0];
	
	if (!(firstChar == NSDeleteFunctionKey || firstChar == NSDeleteCharFunctionKey || firstChar == NSDeleteCharacter))
	return;
	
	if (![[self delegate] respondsToSelector:@selector(deleteKeyPressed:onRow:)]) return;
	[[self delegate] deleteKeyPressed:self onRow:[self selectedRow]];

}

@end
