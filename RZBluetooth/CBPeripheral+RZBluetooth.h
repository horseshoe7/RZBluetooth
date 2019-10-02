//
//  CBPeripheral+RZBluetooth.h
//  RZBluetooth
//
//  Created by Stephen O'Connor (MHP) on 02.10.19.
//  Copyright © 2019 Raizlabs. All rights reserved.
//

#import <CoreBluetooth/CoreBluetooth.h>

NS_ASSUME_NONNULL_BEGIN

@interface CBPeripheral(RZBluetooth)

// properties we need to use to give some callback context
@property (strong, nonatomic, nullable) CBUUID *currentServiceUUID;
@property (strong, nonatomic, nullable) CBCharacteristic *currentCharacteristic;

@end

NS_ASSUME_NONNULL_END
