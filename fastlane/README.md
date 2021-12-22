fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew install fastlane`

# Available Actions
## iOS
### ios sendMetada
```
fastlane ios sendMetada
```
Send metdata
### ios test_testers
```
fastlane ios test_testers
```
Delete sandbox users
### ios create_testers
```
fastlane ios create_testers
```
Crete user in sandbox
### ios test_flight
```
fastlane ios test_flight
```
Push to TestFlight

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
