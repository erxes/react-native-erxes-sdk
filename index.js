import { NativeModules } from "react-native";

const { ErxesSdk } = NativeModules;

export default class Erxes {
    /**
     * Initial opensource version.
     * @param brandId The brandId.
     * @param apiHost The url of api for opensource version.
     * @param organizationName The organization name for saas version.
     * @param email The customer email.
     * @param phone The customer phone.
     * @param companyData The company custom data.
     * @param data The custom data.
     * @param code The code.
     */
    static init(
        brandId,
        apiHost,
        organizationName,
        email,
        phone,
        data,
        companyData,
        code
    ) {
        ErxesSdk.init(
            brandId,
            apiHost,
            organizationName,
            email,
            phone,
            data,
            companyData,
            code
        );
    }

    /**
     * Start sdk.
     */
    static start() {
        ErxesSdk.start();
    }
}
