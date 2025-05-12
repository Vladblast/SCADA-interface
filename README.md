># SCADA Interface  
  
## Overview  
SCADA Interface is a supervisory control and data acquisition application built with Qt/QML. The application provides a visual interface for monitoring and controlling industrial processes with dynamic data visualization for tanks, values, and measurements.  
  
## Technologies Used  
- C++ 11  
- Qt 5/6 Framework (Core, Quick components)  
- QML for UI design  
  
## Requirements  
- Qt 5 or Qt 6  
- CMake 3.14 or higher  
- C++ compiler with C++11 support  
  
## Building the Project  
1. Make sure you have Qt and CMake installed  
2. Clone the repository  
3. Build the project using CMake:
mkdir build && cd build
cmake ..
make


## Project Structure  
The project is organized as follows:  

- **Core Components**:  
- `DataStore.cpp/h`: Data management for the application  
- `randomgenerator.cpp/h`: Generates random values to simulate data  
- `level.cpp/h`: Manages level tracking and calculations  

- **UI Components**:  
- `main.qml`: Main application window  
- `Frame1/`, `Frame2/`, `Frame3/`: Different frame components  
- `LibOfInterface/`: Library of reusable interface components  
- `BottomPanel.qml`: Navigation panel

## Preview
<br>
<br>
<img src="https://github.com/Vladblast/ScadaExample/blob/main/Example.gif"/>

## Features  
- **Multiple Views**: The application offers different frames to display various types of information  

- **Dynamic Data Visualization**: Tanks and indicators display data that updates in real-time  

- **Random Data Generation**: The application includes a random data generator to simulate real-time data  

- **Navigation System**: Bottom panel with navigation buttons to switch between different views  

- **Search Functionality**: Search feature to find specific data or components  

## Usage  
1. Launch the application  
2. Use the bottom panel to navigate between different frames  
3. Use the search field to find specific components or data  
4. Monitor tank levels and other values that update in real-time  
5. Close the application using the close button in the bottom panel  

## Notes  
This SCADA interface demonstrates visualization of industrial process data with a modern Qt/QML interface. The project uses random data generation to simulate real-time industrial process values for demonstration purposes.  

 
