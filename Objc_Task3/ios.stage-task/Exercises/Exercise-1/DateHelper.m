#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    NSString *a = [[NSString alloc] init];
    switch (monthNumber) {
        case 1: a = @"January";
            break;
        case 2: a = @"February";
            break;
        case 3: a = @"March";
            break;
        case 4: a = @"April";
            break;
        case 5: a = @"May";
            break;
        case 6: a = @"June";
            break;
        case 7: a = @"July";
            break;
        case 8: a = @"August";
            break;
        case 9: a = @"September";
            break;
        case 10: a = @"October";
            break;
        case 11: a = @"November";
            break;
        case 12: a = @"December";
            break;
        default: a = nil;
            break;
    }
    return a;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    long d;
    NSArray *list = [date componentsSeparatedByString:@"-"];
    if ([[list objectAtIndex:1] intValue] >= 01 || [[list objectAtIndex:1] intValue] <= 12) {
        NSString *b = [list objectAtIndex:2];
        NSArray *list2 = [b componentsSeparatedByString:@"T"];
        NSString *c = [list2 objectAtIndex:0];
        return d = [c longLongValue];
    } else {
        return d = 0;
    }
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    return nil;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    return NO;
}

@end
