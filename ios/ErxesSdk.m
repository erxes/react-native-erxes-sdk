#import "ErxesSdk.h"
#import <ErxesSDK/ErxesSDK-Swift.h>

@implementation ErxesSdk

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(init:(nonnull NSString *)brandId apiHost:(NSString *)url organizationName:(NSString *)organizationName email:(NSString *)email phone:(NSString *)phone data:(NSString *)data companyData:(NSString *)companyData code:(NSString *)code)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [Erxes setupWithErxesApiUrl:url organizationName:organizationName brandId:brandId email:email phone:phone code:code data:data companyData:companyData];
    });
}

RCT_EXPORT_METHOD(start)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [Erxes start];
    });
}
@end
