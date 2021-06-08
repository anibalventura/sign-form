'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "e51b02ec945f84ab76089e134a24476f",
"index.html": "ce462cd7ec46d57f5718710d81a668ab",
"/": "ce462cd7ec46d57f5718710d81a668ab",
"main.dart.js": "628c6a84807de6c41ea1552fa9865d56",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "20964fbcee2c54b92e4dc63d67287fbd",
".git/config": "d8ff720b76330d613efc47316f335903",
".git/objects/03/c6106739ff4d35ec148f343dfa861fe73165b6": "0d62bb85c8f0361ee485b95f6c8976b3",
".git/objects/58/f74109ae62d2086a174abd7efac9b8dab0a682": "0fbc43ce5f3ef3e00e914475d2585d61",
".git/objects/0e/4e794f5f3f97646671c0571402a29646d22769": "f33a324d3f0651108f40b4e6109a414a",
".git/objects/a4/d2c5e08b0084761227b2028d423bf32ec72c72": "1d51d59233e3673b67011b43715afa37",
".git/objects/a5/b7a75cdfcfadb12e498526bf0cfd0cf33a5496": "e1ec97758c1c96ab200b2de4a49ddbf9",
".git/objects/d6/f8e13e36b2fb8bf4aefa31148888c373395f12": "bffa1555bdfb5d6cb72e2f6991a320d1",
".git/objects/e2/987c12d2b00731423fc6ce02fc9af8e5e7ca1a": "a9301c783cd5e70142842b119785a19d",
".git/objects/c0/772ac82494c1177994d1ca3233cac19b94d4a3": "e64e5da1bde855c6b5dacfccb55d0d57",
".git/objects/fe/702a02e4e9cf0e1abea1727ba65b5062bc3117": "5c8c30c57ae3e312849f547a6316c439",
".git/objects/ec/8d288ffd577cd2d006628ecc61405e3ed06304": "4c1760d71bbe028fc4c648f233cae6b7",
".git/objects/27/81661814b93b5caa6b7a553132aa66a1186952": "657e27f5161e5d2462898c63040c95e0",
".git/objects/pack/pack-224472af102a1be89f8830ad10d58ec8b4ae6ee5.pack": "2ffbc8aee7210ba04803ee030a33f8f7",
".git/objects/pack/pack-224472af102a1be89f8830ad10d58ec8b4ae6ee5.idx": "9a3b7437bd26aad04fb1f187cf183cac",
".git/objects/19/2fffc6b458ce29cefa4b85db165bbb4dae4eba": "9bc34af8f1be98afe3fe10039591b4b9",
".git/objects/72/64a09a43d2e199adb5a6e0cabb3a3bdc9a73f2": "d0648d72659f4568b87420eb039a7d3d",
".git/objects/44/746c6ee77fec780b0ea35d6ff5f813cbcd41ec": "463184cd81a2600fb03bf52127667caf",
".git/objects/38/acf60aa301d7449501a6634b8ccbbc27d78f8d": "7215586d06595d55787d2311fac8cd2b",
".git/objects/54/31689a366c30d5fec4d8526bb4a47e5f3d39ea": "34b6cc2e03e6e219e52e2dd11b736cb9",
".git/objects/5e/c704b7cd1e3114bec3df48370954ea8bbb7900": "953de5e83060d43e300e68f26b9b24dd",
".git/objects/6c/48f5c63dfe0b8d374ec6e04bfab82e3a4ca0ec": "418c8afaf4ad70a4ae026d6285248a66",
".git/objects/d4/e2978bd99b912a879c83c43f9cbe03f2c73295": "e2c5a8b40848e8808795d9247ea9fabd",
".git/objects/cc/b0a266aaaaa3813c913611936acc0c0cb7cd35": "69c7a42f10bf4f2cdeadabec6a755c08",
".git/objects/f8/4657af5ff632a85debd4a6484cd7b6e69ed570": "2b35901cbc2b44aedc108b9cae52f35e",
".git/objects/79/0e256829e0748a6721bd6d5c74a03cc8adfe89": "6e6d9752b58fef47dffa4dc6bf08e8fe",
".git/objects/41/46ec33b9cba15d4ac40fd837d0dfb28b390cf6": "2647e9dba4e8727b71156e0dfe87a994",
".git/objects/8e/1da2929b3c61aa828a31c2cfbf175f2ffe163f": "d686424fab401c75e36bc4e9c1154d11",
".git/HEAD": "2e315b57043b0a01c10d1365acfe0ff6",
".git/info/exclude": "0aebccfd5866bfc3e7c8f625230c22f7",
".git/logs/HEAD": "61eaa45a6289554e5e3e5d3cc6042aae",
".git/logs/refs/heads/production": "61e0933cd7a89234c1d05206d92924c6",
".git/logs/refs/remotes/origin/development": "9cc12c51b39dfaa5250e7c6670477078",
".git/logs/refs/remotes/origin/production": "56be43a7b1b07609fb2e50670d2d03fe",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/refs/heads/production": "42df39ac5ffc1c2df003a824c6204a07",
".git/refs/remotes/origin/development": "c2757cf103234d3221ef01fc3f9295cd",
".git/refs/remotes/origin/production": "42df39ac5ffc1c2df003a824c6204a07",
".git/index": "cb83972fea30a5c3b14089b4e620ba9c",
".git/COMMIT_EDITMSG": "dc4fdabd1b6dc549f6f041cb297c912d",
".git/FETCH_HEAD": "e2c2c9fc39b1a90a8731af8d3b7ea540",
"assets/AssetManifest.json": "99914b932bd37a50b983c5e7c90ae93b",
"assets/NOTICES": "2015a62ed5dbb294cc7965153946a253",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
