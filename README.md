# Rup-Help

The rup-help resource is designed for FiveM, a modification framework for Grand Theft Auto V, providing a help menu system for players.

## Overview

This resource allows players to access a help menu in-game, providing information about various commands and features. It includes chat notifications, a toggle for help notifications, and an automatic help notification system.

## Usage

To use this resource:

1. Add the rup-help resource to your FiveM server resources folder.
2. ensure rup-help in server.cfg.
3. Adjust the configuration settings in the config script (`config.lua`) to customize the frequency and content of automatic help notifications.
4. Modify the HTML file (`index.html`) to customize the help menu layout and content according to your preferences.

## Customization

### HTML File (`index.html`)

You can customize the appearance and content of the help menu by editing the HTML file. Modify the structure, styling, and text content to fit your server's theme and requirements.

### Configuration Settings

You can adjust the behavior of the resource by modifying the Lua script (`client.lua`). Here are some customizable settings:

- `alertsActive`: Set to `true` to enable help notifications by default, or `false` to disable them.
- `Config.Messages`: Array of strings containing the messages for automatic help notifications.
- `Config.WaitNoti`: Interval (in minutes) between automatic help notifications.

## License

This resource is provided under the [MIT License](LICENSE).
