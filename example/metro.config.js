const path = require('path');
const watchFolders = [
  //Relative path to packages directory because I'm in yarn workpspaces
  path.resolve(__dirname + '/../..'),
];
module.exports = {
  // workaround for an issue with symlinks encountered starting with
  // metro@0.55 / React Native 0.61
  // (not needed with React Native 0.60 / metro@0.54)
  resolver: {
    extraNodeModules: new Proxy(
      {},
      { get: (_, name) => path.resolve('.', 'node_modules', name) },
    ),
  },
  transformer: {
    getTransformOptions: async () => ({
      transform: {
        // this defeats the RCTDeviceEventEmitter is not a registered callable module
        inlineRequires: true,
      },
    }),
  },
  // quick workaround for another issue with symlinks
  watchFolders,
};
// const path = require('path');

// module.exports = {
//   // workaround for an issue with symlinks encountered starting with
//   // metro@0.55 / React Native 0.61
//   // (not needed with React Native 0.60 / metro@0.54)
//   resolver: {
//     extraNodeModules: new Proxy(
//       {},
//       { get: (_, name) => path.resolve('.', 'node_modules', name) },
//     ),
//   },

//   // quick workaround for another issue with symlinks
//   watchFolders: ['.', '..'],
// };
