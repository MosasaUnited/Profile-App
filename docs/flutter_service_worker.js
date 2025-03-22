'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "214122b3bc24c48182a4afcd8862c80c",
"assets/AssetManifest.bin.json": "8d978827b013b24e1e8cf0e25927af59",
"assets/AssetManifest.json": "9b22267e979c6249bc7c09b603817502",
"assets/assets/fonts/Cairo-Black.ttf": "2374c281704270d2e3008b421ed80885",
"assets/assets/fonts/Cairo-Bold.ttf": "19a30f18e32cf8dbb9d0cfcee9e2c01e",
"assets/assets/fonts/Cairo-ExtraBold.ttf": "461a6eeaed7944175bd3b03209b6015a",
"assets/assets/fonts/Cairo-ExtraLight.ttf": "c78a99987273c45c6f7c6d7bcd2f7f76",
"assets/assets/fonts/Cairo-Light.ttf": "a6793d94c6568946c4755901ef0f04ed",
"assets/assets/fonts/Cairo-Medium.ttf": "76f957349a6defbef1b6980bc4c8892a",
"assets/assets/fonts/Cairo-Regular.ttf": "94c4feb516a9bd22a5ee417f6e099c93",
"assets/assets/fonts/Cairo-SemiBold.ttf": "a29aa6689e17cc4920f865b1e2f206fd",
"assets/assets/fonts/PlayfairDisplay-Bold.ttf": "48ebb38b5445196e567f948e132230ca",
"assets/assets/fonts/PlayfairDisplay-Regular.ttf": "a96ecd13655587d30a21265c547cd8aa",
"assets/assets/icons/email.png": "94935482aeb69791d75ee21dbaf9f383",
"assets/assets/icons/git.png": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/icons/github.png": "7751dd67781c47c1f464ea790ce51bfe",
"assets/assets/icons/instagram.png": "fa90e1e7734e5bef1193daca074ad67c",
"assets/assets/icons/linkedin.png": "dda499d8edb884a5bab16b08c2a716cd",
"assets/assets/icons/user.png": "e27c8735da98ec6ccdcf12e258b26475",
"assets/assets/icons/whatsapp.png": "b22dcbacfd4d9842d8c9f5453c2f8638",
"assets/assets/images/cdws_mockups.png": "1d965ffd3e8cb9d52f000408a755b8e9",
"assets/assets/images/playstore_image.png": "5b7057a8210224461e0c304b35d47652",
"assets/assets/images/profile_image.jpg": "3179af76d4546990abfd922511e617a4",
"assets/assets/images/resume.jpg": "40be52f3b1333da1a2d527ee9a3ac094",
"assets/assets/images/screenshot_eight.jpg": "de82056f0545eb7b328e2986eda97d86",
"assets/assets/images/screenshot_five.jpg": "a11d741abb25a40849c5b740d95d183c",
"assets/assets/images/screenshot_four.jpg": "8ed81d11d8e8230e50a9eb23e7b9097c",
"assets/assets/images/screenshot_one.jpg": "f6b713e4e3d77f19b0b0de2024db9351",
"assets/assets/images/screenshot_seven.jpg": "00f01799ef0f1ef4596f355a28a6b4f8",
"assets/assets/images/screenshot_six.jpg": "f4a2194a370f190ed43fe27566631e28",
"assets/assets/images/screenshot_three.jpg": "922bc55e59f435a12c6970d5cac184ef",
"assets/assets/images/screenshot_two.jpg": "bf415149794cba5220519ae43fb0dff3",
"assets/assets/images/splash.png": "c6e3ca795105d2e70d1d1ff76f5948fe",
"assets/assets/lottie/background.json": "4b454c2fff2332f3a00f00c820523fcf",
"assets/assets/lottie/space_background.json": "d8efecf5bc1b7461b140b13dc4343074",
"assets/assets/svg/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/FontManifest.json": "2f065835c52045eb52b9cd275086452f",
"assets/fonts/MaterialIcons-Regular.otf": "4c610440a6bed1059554c3a361f14120",
"assets/NOTICES": "5c59b60d1beb7b6143c160f9b4b85bbd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/packages/youtube_player_iframe/assets/player.html": "ea69af402f26127fa4991b611d4f2596",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "3a48f61bffb4d3f424fb0edabadcfc70",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "34fb00c9c88b26723de346cc9af1e0bf",
"/": "34fb00c9c88b26723de346cc9af1e0bf",
"main.dart.js": "1d997f477405df3e1d15d56f5f044cee",
"manifest.json": "dd5a0da62695ca9ca1880f3877fc20fd",
"version.json": "516e2ad42a3cdf6307d5469722fecb1a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
