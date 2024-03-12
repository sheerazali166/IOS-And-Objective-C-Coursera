//
//  main.m
//  NSSets
//
//  Created by Sheeraz Ali on 11/03/2024.
//

#import <Foundation/Foundation.h>




int main(int argc, const char * argv[]) {

    NSSet *dinners = [NSSet setWithObjects:@"fish",@"spaghetti",@"tacos",@"tofurkey",@"hamburgers",@"chili",@"fish", nil];
    NSSet *desserts = [NSSet setWithObjects:@"cookies",@"apple pie",@"banana cake",@"cookies",@"pixie sticks", nil];
    
    NSNumber *example = @3.14;
    NSSet *allFood = [NSSet setWithObjects:dinners, desserts, @"toast",example, nil];
    
    NSSet *kidsEatTheseDesserts = [NSSet setWithObjects:@"cookies",@"apple pie",@"banana cake",@"cookies"@"pixie sticks", nil];
    
    NSSet *grandmaMakesTheseDesserts = [NSSet setWithObjects:@"apple pie",@"banana cake",@"jello", nil];
    
    NSSet *dadMakesTheseDesserts = [NSSet setWithObjects:@"jello", nil];
    
    NSSet *allTheDessert =
    [[kidsEatTheseDesserts setByAddingObjectsFromSet:grandmaMakesTheseDesserts] setByAddingObjectsFromSet:dadMakesTheseDesserts];
    
  
    if ([dadMakesTheseDesserts isEqualToSet:grandmaMakesTheseDesserts]) {
        
        NSLog(@"Dad and Grandma make the exactly same dessert");
    }
    else {
        
        NSLog(@"Dad and Grandma don't make the exactly same dessert");
    }
    
    if ([kidsEatTheseDesserts intersectsSet:dadMakesTheseDesserts]) {
        
        NSLog(@"The kids eat a dessert that dad makes");
    }
    else {
        
        NSLog(@"The kids don't eat a dessert that dad makes");

    }
    
    if ([dadMakesTheseDesserts isSubsetOfSet: grandmaMakesTheseDesserts]) {
        
        NSLog(@"Grandma makes all the desserts that dad makes");
    }
    else {
        
        NSLog(@"Grandma doesn't makes all the desserts that dad makes");
    }
    
    if ([kidsEatTheseDesserts containsObject:@"cookies"]) {
        
        NSLog(@"The kid eat cookies!");
    }
    
    if ([kidsEatTheseDesserts containsObject:@"jello"]) {
        
        NSLog(@"The kids eat jello!");
    }
    
    for (id item in allTheDessert) {
        NSLog(@"%@", item);
    }
    
//    NSLog(@"dinners\n");
//    
//    for (NSString *x in dinners) {
//        
//        NSLog(@"%@\n", x);
//    }
//    
//    NSLog(@"desserts\n");
//    
//    for (NSString *x in desserts) {
//        
//        NSLog(@"%@\n", x);
//    }
    
//        NSLog(@"allFood\n");
//    
//        for (id x in allFood) {
//    
//            NSLog(@"%@\n", x);
//        }
//        
//    
    
    
    return 0;
}
