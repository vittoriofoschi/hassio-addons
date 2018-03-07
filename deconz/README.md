# deCONZ

Add-on to allow Home Assistant to control a ZigBee network with Conbee or RaspBee hardware by Dresden Elektronik.

## Adding ZigBee Devices

After installing and starting this addon in Hass.io, access the deCONZ WebUIs to add ZigBee devices:

- Wireless Light Control at http://hassio.local:8080

- Phoscon at http://hassio.local:8080/pwa

The default username/password is delight/delight.

## Configuring the Home Assistant deCONZ Component

If `discovery:` is enabled in configuration.yaml, navigate to the Overview page after starting this Add-on to configure the deCONZ component.

If `discovery:` is not enabled, follow these instructions to configure the deCONZ component: https://home-assistant.io/components/deconz/.

Raise any issues with this Add-on at https://github.com/marthoc/hassio-addons.

## Important!!

To migrate deCONZ to Hass.io and this Add-on (or before uninstalling/reinstalling this Add-on), backup your deCONZ config:  
1. Start this Add-on.
2. Log into the WebUI, click `Menu` and then `Settings`.  
3. Click `Show Advanced Settings`.  
4. Under `Gateway Backup` click `Save Configuration`.  

After moving your Conbee/Raspbee hardware to Hass.io (or reinstalling), restore your deCONZ config:  
1. Log into the WebUI, click `Menu` and then `Settings`.  
2. Click `Show Advanced Settings`.  
3. Under `Gateway Backup` click `Load Configuration` and select your backup file.
4. Restart this Add-on.

_You must perform these steps or your Light and Group names and other data will be lost!_ (However, your ZigBee devices will remain paired to your Conbee or RaspBee hardware.)
