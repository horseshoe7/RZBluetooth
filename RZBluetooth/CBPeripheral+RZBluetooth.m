//
//  CBPeripheral+RZBluetooth.m
//  RZBluetooth
//
//  Created by Stephen O'Connor (MHP) on 02.10.19.
//  Copyright © 2019 Raizlabs. All rights reserved.
//

#import <objc/runtime.h>
#import "CBPeripheral+RZBluetooth.h"

@implementation CBPeripheral(RZBluetooth)
@dynamic currentServiceUUID, currentCharacteristic;

- (void)setCurrentServiceUUID:(CBUUID* __nullable)object {
    objc_setAssociatedObject(self, @selector(currentServiceUUID), object, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CBUUID*)currentServiceUUID {
    return objc_getAssociatedObject(self, @selector(currentServiceUUID));
}

- (void)setCurrentCharacteristic:(CBCharacteristic* __nullable)object {
    objc_setAssociatedObject(self, @selector(currentCharacteristic), object, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CBCharacteristic* __nullable)currentCharacteristic {
    return objc_getAssociatedObject(self, @selector(currentCharacteristic));
}

@end
