#!/bin/bash
echo "Started"
cd /esptool

echo "Downloading esp32 Bootloader"
if ! wget https://github.com/Aircoookie/WLED/releases/download/v0.13.0-b6/esp32_bootloader_v4.bin; then echo "bootloader not found" && exit 1; fi

echo "Downloading WLED"
if ! wget https://github.com/Aircoookie/WLED/releases/download/v0.13.0-b6/WLED_0.13.0-b6_esp32.bin; then echo "bootloader not found" && exit 1; fi

echo "Do button magic to make PI recognize esp32. You Have 5 seconds.."
sleep 5
python3 ./esptool.py get_security_info


# if ! ./cc_chipid | grep "ID = b524"; then echo "ChipID not found." && exit 1; fi



# echo "Downloading firmware"
# if ! wget https://github.com/Koenkk/Z-Stack-firmware/blob/master/coordinator/Z-Stack_Home_1.2/bin/default/CC2531_DEFAULT_20211115.zip?raw=true; then echo "firmware not found" && exit 1; fi

# echo "unziping"
# mv CC2531_DEFAULT_20211115.zip?raw=true CC2531_DEFAULT_20211115.zip
# if ! 7z x CC2531_DEFAULT_20211115.zip; then echo "unzip failed" && exit 1; fi

# echo "backup firmware"
# ./cc_read save.hex
# if ! cp save.hex /backup/save_$(date +%s).hex; then echo "could not backup firmware" && exit 1; fi

# echo "erase"
# ./cc_erase

# echo "flash firmware"
# ./cc_write CC2531ZNP-Prod.hex

# echo "Finished"
