//
//  ReamlStoreBase.h
//  ra9-iOSTraining
//
//  Created by トゥアンアイン on 2016/10/12.
//  Copyright © 2016年 トゥアンアイン. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface ReamlStoreBase : NSObject {
    @protected
    RLMRealm *_realm;
}
-(instancetype)initWithRealm:(RLMRealm *)realm;
@end
