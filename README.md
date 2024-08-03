# NetCheck

NetCheck is a Qt application that checks the current system's internet connectivity using either Wi-Fi or Ethernet. This project utilizes the QRunnable class to perform connectivity checks and provides a straightforward UI for monitoring the connection status.

## Features

- **Connectivity Check**: Uses QRunnable class to check if the system has internet connectivity.
- **Status Indication**: The NetCheck class provides direct status with a string "connected" or "not-connected."
- **QML UI Component**: 
  - Displays a web page to verify internet functionality.
  - Shows an image and string at the top indicating if the system is connected.
  - Includes a refresh button to recheck the connectivity status.

![QML UI Screenshot](netcheckss1.png) <!-- Add a screenshot of the QML UI here -->

## Screenshot
<img src="netcheckss1.png" height="400" width="600">


## Build and run the project:

   - Follow the usual steps in Qt Creator to build and run the project or cmake build.

## Usage

1. **Run the Application:**

    - Execute the application to start the internet connectivity check.
    - The UI will display a web page to check if the internet is working.
    - At the top of the UI, an image and a string will indicate whether the system is "connected" or "not-connected."
    - Use the refresh button to recheck the connectivity status.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements, extensions or bug fixes.

## Contact

For any questions or support, please contact [kunalf44@gmail.com](mailto:your-email@example.com).


