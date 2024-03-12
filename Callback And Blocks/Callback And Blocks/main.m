//
//  main.m
//  Callback And Blocks
//
//  Created by Sheeraz Ali on 12/03/2024.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

//     ^{
//        NSLog(@"I am the most boring block ever");
//    };
//    
//    ^(id parameter1, id parameter2){
//        
//        NSLog(@"%@, %@", parameter1, parameter2);
//    };
//    
//    NSMutableDictionary *dinnerRequests = [NSMutableDictionary
//                                           dictionaryWithDictionary:@{
//                                                @"Don": @"tofurkey",
//                                                @"Sandy": @"burrito",
//                                                @"Julius": @"chicken",
//                                                @"Theo": @"hamburger",
//                                                @"Joy": @"burrito",
//                                                @"Martha": @"pixie sticks",
//                                                @"Coconut": @"kibble",
//                                                @"Dusty": @"millet",
//    }
//                                           ];
//    
//    
//    [dinnerRequests enumerateKeysAndObjectsUsingBlock:
//     ^(id key, id value, BOOL *stop){
//       
//        NSLog(@"key: %@, value: %@\n", key, value);
//        
//    }];
    
    
    
//    NSArray *family = @[@"Don", @"Sandy", @"Julius", @"Theo", @"Joy", @"Martha", @"Coconut", @"Dusty"];
//    
//    
//    
//    [family enumerateObjectsUsingBlock:
//         ^(id object, NSUInteger index, BOOL *stop) {
//                
//        if([object isEqualToString:@"Julius"]) {
//            
//            *stop = true;
//        }
//        else {
//            
//            NSLog(@"%@\n", object);
//        }
//    }
//    ];
//    
//    int intName = 5;
//    
//    void (^blockName) (id, id) = ^(id parameter1, id parameter1){
//      
//        
//    };
  
//    NSArray *family = @[@"Don", @"Sandy", @"Julius", @"Theo", @"Joy", @"Martha", @"Coconut", @"Dusty"];
//    
//    void (^myBlock) (id, NSUInteger, BOOL *);
//    
//    myBlock = ^(id object, NSUInteger index, BOOL *stop) {
//        
//        if ([object isEqualToString:@"Julius"]) {
//           
//            *stop = YES;
//        }
//        else {
//            
//            NSLog(@"%@\n", object);
//        }
//    };
//    
//    
//    [family enumerateObjectsUsingBlock:myBlock];
    
//    NSMutableString *(^myBlock)(NSInteger, NSString *);
//    
//    myBlock = ^(NSInteger count, NSString *repeatMe) {
//      
//        NSMutableString *local = [NSMutableString stringWithString:@"\n"];
//        
//        for (int i = 0; i < count; i++) {
//            
//            [local appendString: repeatMe];
//        }
//        
//        return local;
//    };
//    
//    NSMutableString *answer = myBlock(3, @"Three is a magic number ");
//    
//    NSLog(@"%@\n", answer);
  
      NSArray *family = @[@"Don", @"Sandy", @"Julius", @"Theo", @"Joy", @"Martha", @"Coconut", @"Dusty"];
      
      NSMutableArray *collector = [NSMutableArray arrayWithCapacity:1];
    
      void (^myBlock)(id, NSUInteger, BOOL *);
    
      myBlock = ^(id object, NSUInteger index, BOOL *stop) {
      
          if ([[object description] containsString:@"D"]) {
              
              [collector addObject: object];
          }
          
      };
    
    [family enumerateObjectsUsingBlock:myBlock];
    
    NSLog(@"%@", collector);
    
//    void (^myBlock1)() = ^{
//        
//        NSLog(@"This is my data %@\n",self.req);
//
//    };
//    
    
//    __weak id weakSelf = self;
//    
//    void(^myBlock)() = ^{
//
//        id strongSelf = weakSelf;
//        
//        if(!strongSelf) return;
//        
//        NSLog(@"This is my data %@\n", strongSelf.req);
//    };
    
    
    return 0;
}
