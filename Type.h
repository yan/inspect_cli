//
//  Type.h
//  inspect
//
//  Created by Yan on 3/15/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Type : NSObject {
	BOOL sign;
	unsigned int width;
	NSString *name;
	Type *children, *sibling;
}
+ (Type*) makeIntWithWidth:(int)width andSign:(BOOL)sign;
+ (Type*) makeStruct;
- (Type*) init;
- (void) setChild:(Type*)c;
- (void) setSibling:(Type*)s;


@property BOOL sign;
@property unsigned int width;
@property (readwrite, copy) NSString *name;
@end
