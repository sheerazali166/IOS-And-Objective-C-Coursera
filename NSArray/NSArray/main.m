//
//  main.m
//  NSArray
//
//  Created by Sheeraz Ali on 11/03/2024.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {


    NSLog(@"Here is a number I care about %d\n", 2);
    
    // Basic Array Creation
    
    NSArray *dinners = @[@"spaghetti", @"tacos", @"tofurkey", @"hamburgers", @"chili", @"fish"];
    
    NSArray *desserts = [NSArray arrayWithObjects: @"apple pie", @"banana cake" @"cookies" @"pixie sticks", nil];
    
    NSLog(@"First dinner: %@", dinners[0]);
    
    NSLog(@"First dessert: %@", [desserts objectAtIndex:0]);
    
    // With fast enumeration
    for (NSString *item in dinners) {
        
        NSLog(@"%@", item);
        
    }
    
    // With a foor loop syntax
    
    for (int i = 0; i < [desserts count]; i++) {
        
        NSLog(@"%d: %@", i, desserts[i]);
    }
    
    if ([dinners isEqualToArray: desserts]) {
        
        NSLog(@"dinners and desserts are equal");
        
    } else {
        
        NSLog(@"dinners and desserts are not equal");
    }
    
    if ([desserts containsObject:@"pixie sticks"]) {
        
        NSLog(@"pixie sticks are a dessert");
    }
    
    NSUInteger index = [dinners indexOfObject: @"tofurkey"];
    
    if (index == NSNotFound) {
        
        NSLog(@"tofurkey isn't in our list of dinners");
    }
    else {
        
        NSLog(@"Tokurkey is on the dinner menu at index %ld", index);
    }
    
    
    NSArray *sortedDinners = [dinners sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray *sortedDisserts = [desserts sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSArray *allFood = [dinners arrayByAddingObjectsFromArray:desserts];
    NSArray *sortedAllFood = [allFood sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    
    
    for (NSString *x in sortedDinners) {
        
        NSLog(@"%@\n", x);
    }
    
    for (NSString *x in sortedDisserts) {
        
        NSLog(@"%@\n", x);
        
    }
    
    for (NSString *x in sortedAllFood) {
        
        NSLog(@"%@\n", x);
        
    }
    
    
    
    return 0;
}
