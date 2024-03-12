//
//  main.m
//  NSDictionary
//
//  Created by Sheeraz Ali on 11/03/2024.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

//    NSDictionary *dinnerRequests = @{
//        @"Don": @"tofurkey",
//        @"Sandy": @"burrito",
//        @"Julius": @"Chicken",
//        @"Theo": @"Hamburger",
//        @"Joy": @"burrito",
//        @"Martha": @"pixie sticks",
//        @"Coconut": @"kibble",
//    
//    };
//    
//    NSDictionary *dinnerRequests = [NSDictionary dictionaryWithObjectsAndKeys:
//                                    @"tofurkey", @"Don",
//                                    @"burrito", @"Sandy",
//                                    @"chicken", @"Julius",
//                                    @"hamburger", @"Theo",
//                                    @"burrito", @"Joy",
//                                    @"pixie sticks", @"Martha",
//                                    @"kibble", @"Coconut", nil];
    
    
    // Creating NS Dictionary
    
//    NSArray *people = @[@"Don",@"Sandy",@"Julius",@"Theo",@"Joy",@"Martha",@"Coconut"];
//    
//    NSArray *requests = @[@"tofurkey",@"burrito",@"chicken",@"hamburger",@"burrito",@"pixie sticks", @"kibble"];
//    
//    NSDictionary *dinnerRequests = [NSDictionary dictionaryWithObject:requests forKey:people];
    

        NSDictionary *dinnerRequests = @{
            @"Don": @"tofurkey",
            @"Sandy": @"burrito",
            @"Julius": @"Chicken",
            @"Theo": @"Hamburger",
            @"Joy": @"burrito",
            @"Martha": @"pixie sticks",
            @"Coconut": @"kibble",
    
        };


//    for (id k in dinnerRequests) {
//        
//        NSLog(@"(%@, %@)\n",k, dinnerRequests[k]);
//    }
    
    // Looping Through Dictionary
    
    for (id v in [dinnerRequests allValues]) {
        
        NSLog(@"%@ requested by %lu\n", v, [[dinnerRequests allKeysForObject:v] count]);
        
    }
    
    
//    NSLog(@"Theo wants %@ for dinner\n", dinnerRequests[@"Theo"]);
//
//    NSLog(@"Joy wants %@ for dinner\n", [dinnerRequests objectForKey:@"Joy"]);
//    
//    NSArray *burritoWanters = [dinnerRequests allKeysForObject:@"burrito"];
//    
//    NSLog(@"These are the burrito requests:\n");
//    
//    for (id b in burritoWanters) {
//        
//        NSLog(@"%@\n", b);
//    }
    
//    NSLog(@"%@", dinnerRequests);
    
    return 0;
}
