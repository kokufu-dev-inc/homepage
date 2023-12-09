'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"manifest.json": "dd76b037527aa41937018a64536127f7",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "9fafa5d949cc20564cb4c5b5f1a0331f",
"/": "9fafa5d949cc20564cb4c5b5f1a0331f",
"main.dart.js": "7fcfa7bd74c0c99e5dbd7a2d20c1c295",
"assets/FontManifest.json": "f864d54128ee7577f10d3eb0ffe43242",
"assets/AssetManifest.json": "d22e7035bd2ff374d23123b019ab6694",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.bin": "36dda476da47684ef0338e6f311638c1",
"assets/assets/images/phones_black.jpeg": "24d52f563ae846cc263a197945d07163",
"assets/assets/images/kokufu-cover3-1.png": "6d6bd75cf712de0bff5cd75f518107b4",
"assets/assets/images/banner-image.jpeg": "ff749a8e410547f006aa380f61b88cec",
"assets/assets/images/phones_blue.jpeg": "d13ea524a9a640a4f07379104d7295d4",
"assets/assets/images/background.jpeg": "73e2d627b7e3720d3e55864b8475c21d",
"assets/assets/images/kokufu-cover4.png": "516641b58a8fa6ae1625b4bbba5f7bd3",
"assets/assets/images/kokufu-cover3.png": "1800bb0327a64a5ec40b97d4ed0cc59d",
"assets/assets/images/flutter-icon.png": "f78d11c9cda36c52917f4794d09f10d9",
"assets/assets/images/flutter_icon_black.png": "c8bfaf8b6b6a070286306b49f1db6944",
"assets/assets/images/phones_white.jpeg": "f36b6090b5e8a2e62fe661af1a87a3de",
"assets/assets/fonts/IBMPlexSansJP-Regular.ttf": "67e78b0308f85925adc54d299f4a6b08",
"assets/assets/fonts/Mukta-ExtraLight.ttf": "7c18662e99ad4d8d060c315c0a6ac72c",
"assets/assets/fonts/Mukta-Light.ttf": "8ec8faf9e2e458515a9381e76e0b58d9",
"assets/assets/fonts/Mukta-ExtraBold.ttf": "8106fa50a304a6f7cedfedd59ed46369",
"assets/assets/fonts/Mukta-Bold.ttf": "d9897871be7241ac63b7c69fad340f2d",
"assets/assets/fonts/IBMPlexSansJP-Thin.ttf": "a056ed6cf00d6d9b548e8c7cb5271b20",
"assets/assets/fonts/IBMPlexSansJP-Bold.ttf": "e7a3fe476bb22327eecf149a7ff42b6e",
"assets/assets/fonts/Mukta-Regular.ttf": "20172687cfdfab812d98a4e0e071081c",
"assets/assets/fonts/IBMPlexSansJP-SemiBold.ttf": "e26e56748c3b5729607e6eff055c1831",
"assets/assets/fonts/Mukta-Medium.ttf": "d6b60760a3f2c824b32f12d95eef9027",
"assets/assets/fonts/IBMPlexSansJP-Medium.ttf": "b9f7e6da0a2fe8345c88e69d800b25c5",
"assets/assets/fonts/IBMPlexSansJP-Light.ttf": "a4b19cced449bf0003d59e15d7019e1d",
"assets/assets/fonts/IBMPlexSansJP-ExtraLight.ttf": "b0ea9c9a35151ea4fc1c9aa29c0a5fba",
"assets/assets/fonts/Mukta-SemiBold.ttf": "b986116346c34aa0452616bf012fc617",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/fonts/MaterialIcons-Regular.otf": "f2ec5f37ce0c9decda06fe90fffe28c1",
"assets/NOTICES": "0d47ac62e35a399daa1e8cbd03d35007",
"version.json": "138488a7762ce112d918bd87e96b8b34",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
