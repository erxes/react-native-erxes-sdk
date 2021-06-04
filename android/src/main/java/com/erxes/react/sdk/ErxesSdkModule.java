package com.erxes.react.sdk;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.newmedia.erxeslibrary.configuration.Config;
import org.json.JSONObject;

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
    public void init(String apihost,String brandid) {
        config = new Config.Builder(brandid)
               .setApiHost(apihost)
                .build(reactContext);
    }

    @ReactMethod
    public void initSaas(String companyName,String brandid) {
        config = new Config.Builder(brandid)
                .setOrganizationName(companyName)
                .build(reactContext);
    }

    @ReactMethod
    public void start() {
        if(config != null)
        config.Start();
    }

    @ReactMethod
    public void startWithData(String jsonString ) {
        if(config != null){
            config.Start(jsonString);
        }
    }
}
