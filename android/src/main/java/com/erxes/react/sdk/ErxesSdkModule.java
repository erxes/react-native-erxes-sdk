package com.erxes.react.sdk;

import android.util.Log;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.newmedia.erxeslibrary.configuration.Config;

public class ErxesSdkModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Config config = null;

    public ErxesSdkModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "ErxesSdk";
    }

    @ReactMethod
    public void init(
            String brandId,
            String apiHost,
            String organizationName,
            String email,
            String phone,
            String data,
            String companyData,
            String code
    ) {
        config = new Config
                .Builder(brandId)
                .setApiHost(apiHost)
                .setOrganizationName(organizationName)
                .setEmail(email)
                .setPhone(phone)
                .setData(data)
                .setCompanyData(companyData)
                .setCode(code)
                .build(reactContext);
    }

    @ReactMethod
    public void start() {
        if (config != null)
            config.Start();
    }
}
