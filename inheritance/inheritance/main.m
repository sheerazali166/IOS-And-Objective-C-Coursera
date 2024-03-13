//
//  main.m
//  inheritance
//
//  Created by Sheeraz Ali on 12/03/2024.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "CarPart.h"
#import "Headlight.h"

@implementation Product

- (NSString *) description {
    
    NSString *ret = [NSString stringWithFormat:@"sku:%@, supplier:%@", self.sku, self.supplier];
    return ret;
}

@end

@implementation CarPart: Product

- (NSString *) description {
    
    NSString *ret = [NSString stringWithFormat:@"model:%@, oem:%@, %@", self.carModel, self.oem, [super description]];

    return ret;
}

@end

@implementation Headlight: CarPart

- (NSString *) description {
    
    NSString *ret = [NSString stringWithFormat:@"\ncolor:%@, tech:%@, %@", self.color, self.technology, [super description]];
    
    return ret;
}

@end

int main(int argc, const char * argv[]) {

    Headlight *p = [Headlight alloc];
    
    [p setColor:@"Bright White"];
    [p setTechnology:@"Halogen"];
    
    
    [p setCarModel:@"BMW"];
    [p setOem:@"12354"];
    
    
    [p setSku:@"55555-66666"];
    [p setSupplier:@"Buddy's Way Good Lights"];
    
    NSLog(@"%@\n", [p description]);
    
    return 0;
}
