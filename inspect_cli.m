#import <Foundation/Foundation.h>
#import "y.tab.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	yyparse();
    // insert code here...
    NSLog(@"Hello, World!");
    [pool drain];
    return 0;
}
