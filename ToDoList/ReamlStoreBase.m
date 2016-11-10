//
//  ReamlStoreBase.m
//  ra9-iOSTraining
//
//  Created by トゥアンアイン on 2016/10/12.
//  Copyright © 2016年 トゥアンアイン. All rights reserved.
//

#import "ReamlStoreBase.h"

@implementation ReamlStoreBase
-(instancetype)initWithRealm:(RLMRealm *)realm {
    self = [super init];
    if (self) {
        _realm = realm;
    }
    return self;
}
@end
