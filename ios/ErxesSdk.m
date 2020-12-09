#import "ErxesSdk.h"
#import <ErxesSDK/ErxesSDK-Swift.h>

@implementation ErxesSdk

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(init:(NSString *)url brandId:(nonnull NSString *)brandId)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        // use weakSelf here
        [Erxes setupWithErxesApiUrl:url brandId:brandId];
    });
}

RCT_EXPORT_METHOD(initSaas:(NSString *)companyName brandId:(nonnull NSString *)brandId)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        // use weakSelf here
        [Erxes setupSaasWithCompanyName:companyName brandId:brandId];
    });
}

RCT_EXPORT_METHOD(start)
{
//    [Erxes startWithData:nil];
    dispatch_async(dispatch_get_main_queue(), ^{
        // use weakSelf here
        [Erxes start];
    });
}

RCT_EXPORT_METHOD(startWithData:(nonnull NSString *)data)
{
//    [Erxes startWithData:nil];
    dispatch_async(dispatch_get_main_queue(), ^{
        // use weakSelf here
        NSDictionary *data = @{ @"key" : @"value", @"another key" : @"another value"};
        [Erxes start];
    });
}
@end
