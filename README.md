Solutions related to data collection, storage, analysis and export/interfaces.

The modbusTcpMaster Service will run on the target system (arm) collecting information from all configured devices. An example configuration can be found in the file < dbms/00_rpi/gc600.conf >. The modbus registers map of each modbus device must follow the file model < dbms/00_rpi/gc600.mbr >.

Multiple processes can be configured with one or more devices.

More details coming soon...
 
OPTIONS[ [config_file_path] [polling_time(ms)] [pollingCount] [errorMax] ]
