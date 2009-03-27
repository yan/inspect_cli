//
//  Type.m
//  inspect
//
//  Created by Yan on 3/15/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "Type.h"


@implementation Type
@synthesize sign, width, name;

+ (Type*) makeIntWithWidth:(int)width andSign:(BOOL)sign
{
	Type *tmp = [[Type alloc] init];
	tmp.width = width;
	tmp.sign = sign;
	return tmp;
}

+ (Type*) makeStruct
{
	Type *tmp = [[Type alloc] init];
	return tmp;
}

- (Type*) init
{
	if (self = [super init])
	{
		sibling = nil;
		children = nil;
	}
	return self;
}


- (NSString*)description
{
	return [NSString stringWithFormat:@"(Type w:%d s:%c c#:%@ s#:%@ name:%@)",
			self.width, 
			self.sign?'Y':'N', 
			children, 
			sibling, 
			name];
}

- (void) setChild:(Type*)c
{
	children = c;
	[c retain];
	return;
}

- (void) setSibling:(Type*)s
{
	sibling = s;
	[s retain];
	return;
}
@end
