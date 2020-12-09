import { NativeModules } from "react-native";

const { ErxesSdk } = NativeModules;

export default class Erxes {
  static init(url, brandId) {
    ErxesSdk.init(url, brandId);
  }

  static initSaas(companyName, brandId) {
    ErxesSdk.initSaas(companyName, brandId);
  }
  static start() {
    ErxesSdk.start();
  }
}
