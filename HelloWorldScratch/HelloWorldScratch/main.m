//
//  main.m
//  HelloWorldScratch
//
//  Created by bazinga on 09/04/14.
//
//

#import <Cocoa/Cocoa.h>
/*
int main(int argc, const char * argv[])
{
    return NSApplicationMain(argc, argv);
}

*/
@interface World:NSObject
{
}
-world;
@property NSString *firstname;
@property NSString *lastname;
@end

@implementation World
- world
{
 	NSLog(@"Testing 1 2 3 ");
   NSLog(@"Testing 1 2 3 4");
 	return 0;
}
@end

int main(int argc, char *argv[])
{
 	id hello;
    
 	hello=[[World alloc] init];
 	[hello world];
 	
 	return 1;
}