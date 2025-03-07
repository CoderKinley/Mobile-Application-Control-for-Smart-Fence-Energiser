# Smart Electric Fence Energizer - Mobile App

## Overview
The **Smart Electric Fence Energizer Mobile App** is a **Flutter-based application** designed to provide real-time monitoring and remote control of an electric fence energizer. This app enables users to monitor voltage levels, relay status, and network connectivity while also allowing remote activation and deactivation of the energizer. Built with **Flutter** and integrated with **MQTT**, the app ensures a seamless and intuitive user experience for managing the security of properties and farms.

## Key Features

| Feature | Description |
|---------|------------|
| **Real-time Monitoring** | View voltage levels, relay state, and signal strength in real-time. |
| **Remote Control** | Turn the electric fence on/off from anywhere. |
| **MQTT Integration** | Secure and fast data communication with the energizer. |
| **User Authentication** | Secure login system for authorized access. |
| **Event Logging** | Stores historical data of fence activities. |
| **GSM & WiFi Support** | Works with both internet and cellular networks. |
| **Alert System** | Notifies users of voltage fluctuations and disconnections. |
| **Intuitive UI** | Simple, user-friendly interface for smooth navigation. |

## Technology Stack
- **Flutter** (Dart) - Cross-platform app development.
- **MQTT (Mosquitto, AWS IoT, etc.)** - Real-time messaging protocol.
- **Provider (State Management)** - Efficient state handling.
- **SQLite (Local Storage)** - Stores user preferences and logs.
- **REST API Support** (Future expansion for cloud services).

## Installation & Setup
1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/smart-energizer-app.git
   cd smart-energizer-app
   ```
2. **Install dependencies**:
   ```bash
   flutter pub get
   ```
3. **Configure MQTT Settings**:
   - Open `lib/config.dart` and update the broker details.
   - Example:
     ```dart
     const String mqttBroker = "119.2.119.202";
     const int mqttPort = 1883;
     const String publishTopic = "Energizer/commands";
     const String subscribeTopic = "Energizer/data";
     ```
4. **Run the application**:
   ```bash
   flutter run
   ```

## UI Design
The app features a **modern and minimalistic UI** with:
- **Dashboard**: Displays real-time data such as voltage, relay status, and network strength.
- **Control Panel**: Toggle the electric fence on/off.
- **History Logs**: View past alerts and status changes.
- **Settings Page**: Manage MQTT configurations and user preferences.

Here’s a preview of the app's UI:

<div style="display: flex; justify-content: center;">
  <table style="width: 100%; border-collapse: collapse;">
    <tr>
      <td style="text-align: center; padding: 10px;">
        <img src="https://github.com/user-attachments/assets/b8df0a6a-955d-4086-8ecf-56f383e6e6e9" alt="Menu Page" style="width: 100%; max-width: 500px;">
        <p><b>On Off Button Mqtt</b></p>
      </td>
      <td style="text-align: center; padding: 10px;">
        <img src="https://github.com/user-attachments/assets/70a5c129-78d4-4519-9a20-d074d57e873b" alt="Order Summary" style="width: 100%; max-width: 500px;">
        <p><b>Loading Connection</b></p>
      </td>
    </tr>
    <tr>
      <td style="text-align: center; padding: 10px;">
        <img src="https://github.com/user-attachments/assets/3f7d2cd6-443d-45d9-af20-382c3b5f6937" alt="Payment Page" style="width: 100%; max-width: 500px;">
        <p><b>Data From the Field</b></p>
      </td>
      <td style="text-align: center; padding: 10px;">
        <img src="https://github.com/user-attachments/assets/2af3d240-12f7-4f94-bad4-c31d13258791" alt="Hold Orders View" style="width: 100%; max-width: 500px;">
        <p><b></b></p>
      </td>
    </tr>
    <tr>
      <td style="text-align: center; padding: 10px;">
        <img src="https://github.com/user-attachments/assets/15073dd1-3c4f-4d6f-92c6-eb60e5f8e17c" alt="Extra Image 1" style="width: 100%; max-width: 500px;">
        <p><b>Extra Image 1</b></p>
      </td>
      <td style="text-align: center; padding: 10px;">
        <img src="https://github.com/user-attachments/assets/a36a4b2b-1dcf-494d-9e97-01bd0be55aa0" alt="Extra Image 2" style="width: 100%; max-width: 500px;">
        <p><b>Extra Image 2</b></p>
      </td>
    </tr>
  </table>
</div>

## MQTT Configuration

| Parameter | Value |
|-----------|-------|
| **Broker** | `119.2.119.202` |
| **Port** | `1883` |
| **Publish Topic** | `Energizer/commands` |
| **Subscribe Topic** | `Energizer/data` |

## Troubleshooting

| Issue | Solution |
|--------|----------|
| **App not connecting to MQTT** | Check broker settings and internet connection. |
| **Commands not executing** | Ensure ESP32 and GSM module are online. |
| **UI not updating in real-time** | Verify that MQTT messages are correctly received. |

## Future Enhancements
- **Push Notifications**: Alerts for voltage drops and connectivity issues.
- **Multi-User Support**: Role-based access control for multiple users.
- **Cloud Integration**: Data storage and analysis for long-term monitoring.
- **Dark Mode**: Theme toggle for better user experience.

## Author
Developed by **[Your Name]**

## License
MIT License

