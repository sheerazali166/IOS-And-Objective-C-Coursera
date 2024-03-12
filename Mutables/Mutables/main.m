//
//  main.m
//  Mutables
//
//  Created by Sheeraz Ali on 11/03/2024.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSString *a = @"First example";
    NSString *b = @"Second example";
    NSString *c = @"Third example";
    
    NSString *immutable;
    
    immutable = a;
    immutable = b;
    immutable = c;
    
    NSString *mutable = [[NSMutableString alloc]init];
    
//    [mutable setString:a];
//    
//    [mutable setString:b];
//    
//    [mutable setString:c];
    
//    NSMutableString *company = [NSMutableString stringWithCapacity:20];
//    
//    NSString *product = @"MacBook Pro";
//    
//    [company setString:@"Apple"];
//    [company appendString:@" "];
//    [company appendString:product];
//    
//    NSLog(@"%@", company);
//    
//    [company setString:@"Apple"];
//    [company appendFormat:@" %@ inch %@", @17, product];
//    NSLog(@"%@", company);
//    
//    [company setString:@"Apple MacBook Pro"];
//    [company insertString:@"15 inch " atIndex:6];
//    NSLog(@"%@", company);
  
    
//    NSMutableString *product = [NSMutableString stringWithCapacity: 20];
//    
//    [product setString: @"Apple MacBook Pro"];
//    
//    NSLog(@"%@", product);
//    
//    [product replaceCharactersInRange:NSMakeRange(6, 7) withString:@"ipad"];
//    
//    NSLog(@"%@", product);
//    
//    [product deleteCharactersInRange: NSMakeRange(10, 4)];
//    
//    NSLog(@"%@", product);
  
//     
//      NSSet *kidsEatTheseDesserts = 
//        [NSSet setWithObjects:@"cookies", @"apple pie", @"banana cake", @"cookies", @"pixie sticks", nil];
//    
//      NSSet *grandmaMakesTheseDesserts =
//        [NSSet setWithObjects:@"apple pie", @"banana cake", @"jello", nil];
//    
//      NSSet *dadMakesTheseDesserts =
//        [NSSet setWithObjects:@"jello", @"toast", nil];
//    
//      NSMutableSet *possibleDesserts = [NSMutableSet setWithCapacity:1];
//    
//      [possibleDesserts setSet:grandmaMakesTheseDesserts];
//      [possibleDesserts unionSet:dadMakesTheseDesserts];
//    
//      NSLog(@"\nHere is what can made for dessert: %@", possibleDesserts);
//    
//      [possibleDesserts intersectSet: kidsEatTheseDesserts];
//    
//      NSLog(@"\nOf all the possible desserts, this is what kids will eat: %@", possibleDesserts);
//    
//      [possibleDesserts setSet:grandmaMakesTheseDesserts];
//      [possibleDesserts unionSet:dadMakesTheseDesserts];
//      [possibleDesserts minusSet: kidsEatTheseDesserts];
//    
//      NSLog(@"\n The kids won't eat these: %@", possibleDesserts);
    
      // NSMutable Array
    
//      NSMutableArray *kidsEatTheseDesserts =
//        [NSMutableArray arrayWithObjects:@"cookies",@"apple pie",@"banana cake",@"cookies",@"pixie sticks",@"cookies", nil];
//    
//    
//      NSMutableArray *dadMadeThesedesserts = [NSMutableArray arrayWithObjects:@"jello", @"toast", nil];
//    
//      [kidsEatTheseDesserts addObject:@"toast"];
//      NSLog(@"\nHere is what's the kids ate: %@", kidsEatTheseDesserts);
//    
//      [kidsEatTheseDesserts removeLastObject];
//      NSLog(@"\nHere is what's the kids ate: %@", kidsEatTheseDesserts);
//     
//      [dadMadeThesedesserts insertObject:@"pixie sticks" atIndex:1];
//      NSLog(@"\nHere is what dad made %@", dadMadeThesedesserts);
//      
//    
//      [dadMadeThesedesserts removeObjectAtIndex:0];
//      [dadMadeThesedesserts replaceObjectAtIndex:1 withObject:@"toast flavored cook"];
//    
//      NSLog(@"\nHere's what dad made: %@", dadMadeThesedesserts);
//      
//      [dadMadeThesedesserts removeObject:@"pixie sticks"];
//      
//      NSLog(@"\nHere's what the dad made %@", dadMadeThesedesserts);
  
        NSMutableDictionary *dinnerRequests =
            [NSMutableDictionary dictionaryWithDictionary:@ {
                @"Don": @"tofurkey",
                @"Sandy": @"burrito",
                @"Julius": @"chicken",
                @"Theo": @"hamburger",
                @"Coconut": @"kibble"
            }];
    
    
//      [dinnerRequests setObject:@"pixie sticks" forKey:@"Martha"];
//    
//      [dinnerRequests removeObjectForKey:@"Coconut"];
//    
//      dinnerRequests[@"Joy"] = @"burrito";
//    
//      NSLog(@"\n%@", dinnerRequests);
//    
    
    
        NSMutableDictionary *moreRequests = [NSMutableDictionary dictionaryWithDictionary:@ {
            @"Joy": @"burrito",
            @"Dusty": @"millet"
        }];
     
      
       [dinnerRequests addEntriesFromDictionary:moreRequests];
       
       NSLog(@"\n%@", dinnerRequests);
    
    
       NSString *numbers = @"";
    
//    for (int i = 0; i < 50000; i++) {
//        
//        numbers = [numbers stringByAppendingFormat:@"%d", i];
//    }
    
  
      NSMutableArray *dinnerGuests = [NSMutableArray arrayWithObjects:
                                      @"Don",
                                      @"Sandy",
                                      @"Julius",
                                      @"Theo",
                                      @"Coconut",
                                      @"Don",
                                      @"Joy",
                                      @"Dusty",nil
        ];
   
    NSArray *guests = [NSArray arrayWithArray: dinnerGuests];
     
    for (id item in guests) {
        
        if([item isEqualToString: @"Sandy"]) {
            
            [dinnerGuests removeObject: item];
        }
    }
    
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
