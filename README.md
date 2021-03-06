# ADB-remote for Android TV
### Remote controller for any Android TV device connected via ADB.

![adb-remote.png](./adb-remote.png)

### Why to use ADB-remote
- standard android emulator remote covers loads of AndroidTV emulator

![standard-adb.png](./standard-adb.png)

- it has build in `adb reverse tcp:8081 tcp:8081` - very useful for react native developers
- it has diagonal arrow
- it has next and prev for testing players
- it connects to real device via adb, so keys not supported by device can be tested

### Compiling remote adb require:
- Mac OS v. `10.15 Catalina`
- XCode 11,
- adb located in `~/Library/Android/sdk/platform-tools/adb` if your path to adb is different please change it in `Utils.swift` class.
- there can be only one instance of connected adb device

### How to use:
- Start emulator or connect your device via adb
- Open this project in XCode and run
- The remote is now ready to use.

### Roadmap:
- shoortcuts (cmd + M, arrows, enter, back)
- tooltips on mouse over
- long press support
