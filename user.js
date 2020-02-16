// Firefox Zero user.js
// rev20200215

// General Preferences
user_pref("accessibility.force_disabled", 1);
user_pref("browser.aboutConfig.showWarning", false); // Disable modify warning
user_pref("browser.display.background_color", "#2a2a2e");
user_pref("browser.download.autohideButton", false);
user_pref("browser.preferences.defaultPerformanceSettings.enabled", false); // Performance detection off
user_pref("browser.shell.checkDefaultBrowser", false); // Disable default check
user_pref("browser.uidensity", 1); // Compact density
user_pref("extensions.activeThemeID", "firefox-compact-dark@mozilla.org"); // Dark theme
user_pref("extensions.allowPrivateBrowsingByDefault", true);
user_pref("findbar.highlightAll", true); // Highlight text search
user_pref("general.autoScroll", false);
user_pref("general.smoothScroll", false); // Smooth scrolling off
user_pref("toolkit.cosmeticAnimations.enabled", false);
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true); // Legacy CSS on
user_pref("ui.systemUsesDarkTheme", true); // Dark mode enabled

// Basic Search Bar
user_pref("browser.search.suggest.enabled", false); // No search suggestions
user_pref("browser.search.update", false); // Disable search engine changes
user_pref("browser.urlbar.autoFill", false);
user_pref("browser.urlbar.maxRichResults", 0);
user_pref("browser.urlbar.speculativeConnect.enabled", false); // Disable autocomplete URLs
user_pref("browser.urlbar.suggest.bookmark", false);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.searches", false);

// Local Data Storage
user_pref("browser.bookmarks.max_backups", 0); // No bookmarks backup
user_pref("browser.cache.disk.enable", false); // Disable disk cache
user_pref("browser.cache.memory.enable", true); // Default
user_pref("browser.cache.offline.enable", false); // Disable offline cache
user_pref("browser.formfill.enable", false);
user_pref("browser.library.activity-stream.enabled", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.showSearch", false);
user_pref("browser.newtabpage.enabled", false); // Disable newtab page
user_pref("browser.privatebrowsing.autostart", true); // Always private mode
user_pref("browser.sessionstore.max_tabs_undo", 0); // No tab restore
user_pref("browser.sessionstore.privacy_level", 2); // Never store session data
user_pref("browser.startup.homepage", "about:blank");
user_pref("signon.autofillForms", false);
user_pref("signon.rememberSignons", false); // Disable passwords
user_pref("startup.homepage_override_url", "");
user_pref("startup.homepage_welcome_url", "");

// Network Configuration
user_pref("browser.send_pings.require_same_host", true);
user_pref("captivedetect.canonicalURL", "");
user_pref("network.captive-portal-service.enabled", false); // Disable captive portal
user_pref("network.connectivity-service.enabled", false);
user_pref("network.cookie.cookieBehavior", 0); // Accept cookies [Block 3rd party with "1"]
user_pref("network.dns.disablePrefetch", true); // Disable DNS prefetching
user_pref("network.http.referer.XOriginPolicy", 1); // Send referer to same eTLD sites [Set to "0" if you experience issues with 2FA logins]
user_pref("network.predictor.enabled", false); // Disable predictor
user_pref("network.prefetch-next", false); // Disable link prefetching
user_pref("network.security.esni.enabled", true);
user_pref("network.trr.bootstrapAddress", "1.1.1.1");
user_pref("network.trr.mode", 0); // DNS over HTTPS off [Enable DoH with "2" or "3"]

// Device Fingerprinting
user_pref("beacon.enabled", false); // Disable beacon
user_pref("browser.search.geoip.url", "");
user_pref("dom.battery.enabled", false); // Disable battery status
user_pref("dom.event.clipboardevents.enabled", false); // Disable clipboard
user_pref("dom.gamepad.enabled", false); // Disable USB devices
user_pref("dom.push.enabled", false); // Disable push notifications
user_pref("dom.serviceWorkers.enabled", false); // Disable service workers
user_pref("dom.webnotifications.enabled", false); // Disable desktop notifications
user_pref("general.useragent.override", "Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0"); // Useragent [Modify or remove this; redundant with RFP]
user_pref("geo.enabled", false); // Disable geolocation
user_pref("geo.wifi.uri", "");
user_pref("media.navigator.enabled", false); // Block mic and camera
user_pref("media.peerconnection.enabled", false); // Disable WebRTC
user_pref("media.webspeech.synth.enabled", false); // Disable speech synthesis
user_pref("privacy.donottrackheader.enabled", true); // Send DNT header
user_pref("privacy.firstparty.isolate", true); // Restrict data to domain level
user_pref("privacy.resistFingerprinting", true); // FP resist on [Disable RFP with "false" if you experience issues]
user_pref("webgl.disabled", true); // Disable WebGL

// Telemetry & Shield
user_pref("app.normandy.api_url", "");
user_pref("app.normandy.enabled", false); // Disable shield telemetry
user_pref("breakpad.reportURL", "");
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("browser.ping-centre.telemetry", false); // Disable ping telemetry
user_pref("browser.tabs.crashReporting.sendReport", false); // Disable crash reports
user_pref("datareporting.healthreport.infoURL", "");
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false); // Disable all technical data
user_pref("datareporting.policy.firstRunURL", "");
user_pref("permissions.manager.defaultsUrl", "");
user_pref("security.ssl.errorReporting.enabled", false); // Disable SSL error reporting
user_pref("security.ssl.errorReporting.url", "");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.enabled", false); // Locked preference
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.server", "");
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.unified", false); // Disable FF telemetry
user_pref("toolkit.telemetry.updatePing.enabled", false);

// Add-ons Update Check
user_pref("extensions.systemAddon.update.enabled", false); // Disable system add-ons updates
user_pref("extensions.systemAddon.update.url", "");
user_pref("extensions.update.autoUpdateDefault", false); // Disable autoinstall extension updates
user_pref("extensions.update.enabled", false); // Disable autochecking for extension updates

// Features & Media Plugins
user_pref("browser.uitour.enabled", false); // Disable UITour
user_pref("browser.uitour.url", "");
user_pref("extensions.formautofill.available", "off"); // Disable autofill
user_pref("extensions.getAddons.cache.enabled", false);
user_pref("extensions.getAddons.discovery.api_url", "");
user_pref("extensions.htmlaboutaddons.discover.enabled", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false); // No add-ons recommendations
user_pref("extensions.pocket.enabled", false); // Disable pocket
user_pref("extensions.screenshots.disabled", true); // Disable screenshots
user_pref("extensions.webcompat-reporter.enabled", false); // Disable report this site
user_pref("extensions.webservice.discoverURL", "");
user_pref("identity.fxaccounts.enabled", false); // Disable FF accounts
user_pref("media.eme.enabled", false); // Disable EME for DRM content
user_pref("media.gmp-gmpopenh264.enabled", false); // Disable OpenH264 for WebRTC
user_pref("media.gmp-manager.url", "");
user_pref("media.gmp-provider.enabled", false);
user_pref("media.gmp-widevinecdm.enabled", false); // Disable Widevine CDM
user_pref("privacy.trackingprotection.cryptomining.enabled", false);
user_pref("privacy.trackingprotection.enabled", false); // Redundant with uBlock0
user_pref("privacy.trackingprotection.fingerprinting.enabled", false);
user_pref("privacy.trackingprotection.pbmode.enabled", false);
user_pref("webchannel.allowObject.urlWhitelist", "");

// Google Safe Browsing
user_pref("browser.safebrowsing.allowOverride", false);
user_pref("browser.safebrowsing.blockedURIs.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.url", "");
user_pref("browser.safebrowsing.provider.mozilla.gethashURL", "");
user_pref("browser.safebrowsing.provider.mozilla.updateURL", "");
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.reportPhishURL", "");

// Mozilla Blocklist
user_pref("extensions.blocklist.enabled", false); // Disable blocklist
user_pref("extensions.blocklist.url", "");
user_pref("services.settings.default_bucket", ""); // Disable contacting content server
user_pref("services.settings.server", ""); // Disable contacting settings server
