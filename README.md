# Demo

TUTKDemo is an iOS application developed to demonstrate the integration of the `DemoSDK` framework and fetching a user list from a remote API. 

## Features

- SDK Integration: Showcases how to import and utilize the DemoSDK framework within an iOS project.

- Fetch API: Retrieves user data from a remote API and displays it in a SwiftUI list.

- Unit Testing: Includes tests for ViewModel and API calls to ensure reliability.

## Importing an Objective-C Framework

To integrate the Objective-C framework into your project, follow these steps:

1. Link the Library

- Go to Xcode → **Build Phases** → **Link Binary with Libraries**.
- Click the **+** button and add framework.

2. Configure Header Search Paths

- In Xcode → **Build Settings**, search for **Header Search Paths**.
- Add the path where framework's headers are located:
```sh
HEADER_SEARCH_PATHS = "$(PROJECT_DIR)/DemoSDK.framework/Release-iphonesimulator/include";
```

3. Set Up the Bridging Header
- Create a new file named `Bridging-Header.h`
- Import the framework header in the bridging file:
```objc
#import "DemoSDK.h"
```
- In Xcode → **Build Settings**, search for **Objective-C Bridging Header** and set its path accordingly:
```sh
SWIFT_OBJC_BRIDGING_HEADER = "$(PROJECT_DIR)/YourProject/Bridging-Header.h";
```
