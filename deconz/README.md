# deCONZ

Add-on to allow Home Assistant to control a ZigBee network with Conbee or RaspBee hardware by Dresden Elektronik.

## Important!!

Before updating or uninstalling/reinstalling this Add-on, backup your deCONZ config:  
1. Log into the WebUI, click `Menu` and then `Settings`.  
2. Click `Show Advanced Settings`.  
3. Under `Gateway Backup` click `Save Configuration`.  

After updating, restore your deCONZ config:  
1. Log into the WebUI, click `Menu` and then `Settings`.  
2. Click `Show Advanced Settings`.  
3. Under `Gateway Backup` click `Load Configuration` and select your backup file.  

_You must perform these steps or your Light and Group names and other data will be lost!_ (However, your ZigBee devices will remain paired to your Conbee or RaspBee hardware.)

## Adding ZigBee Devices

After installing and starting this addon in Hass.io, access the deCONZ WebUIs to add ZigBee devices:

- Wireless Light Control at http://hassio.local:8080

- Phoscon at http://hassio.local:8080/pwa

## Configuring the Home Assistant deCONZ Component

If `discovery:` is enabled in configuration.yaml, navigate to the Overview page after starting this Add-on to configure the deCONZ component.

If `discovery:` is not enabled, add the following to configuration.yaml:  
`deconz:`  
`  host: 127.0.0.1`  

Restart Home Assistant and navigate to the Overview page to configure the deCONZ component.

For more information about the deCONZ component, see: https://home-assistant.io/components/deconz/.

Raise any issues with this Add-on at https://github.com/marthoc/hassio-addons.
