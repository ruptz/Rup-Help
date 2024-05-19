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

## Images

![img1](https://media.discordapp.net/attachments/1043860724419670026/1241702077458026536/image.png?ex=664b28ac&is=6649d72c&hm=3f509b8bffdf193630ce66d4a5405ca57e2cb1d41e58ac50605f6d8a287d12c1&=&format=webp&quality=lossless)
![img2](https://media.discordapp.net/attachments/1043860724419670026/1241702077458026536/image.png?ex=664b28ac&is=6649d72c&hm=3f509b8bffdf193630ce66d4a5405ca57e2cb1d41e58ac50605f6d8a287d12c1&=&format=webp&quality=lossless)

## License

This resource is provided under the [MIT License](LICENSE).
