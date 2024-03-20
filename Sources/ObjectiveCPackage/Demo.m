#import "Demo.h"

@implementation ObjectiveDemo

- (NSString *)demoWithGreeter:(id<Greeter>)greeter {
  return [greeter sayHello];
}

@end
