import { NativeModules } from "react-native";

const { ErxesSdk } = NativeModules;

export default class Erxes {
    /**
     * Initial opensource version.
     * @param url The url of api.
     * @param brandId The brandId.
     */
    static init(url, brandId) {
        ErxesSdk.init(url, brandId);
    }

    /**
     * Initial saas version.
     * @param companyName The organization name.
     * @param brandId The organization brandId.
     */
    static initSaas(companyName, brandId) {
        ErxesSdk.initSaas(companyName, brandId);
    }

    /**
     * Start sdk.
     */
    static start() {
        ErxesSdk.start();
    }

    /**
     * Start sdk with data.
     * @param customData The custom jsonString data.
     */
    static startWithData(customData) {
        ErxesSdk.startWithData(customData);
    }
}
