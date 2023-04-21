#!/system/bin/sh
/system/bin/mount -o rw,remount /tvconfig
chown system:system /tvconfig/config/model/Customer_1.ini
chmod 666           /tvconfig/config/model/Customer_1.ini
chown system:system /tvconfig/config/pq/Main.bin
chmod 666           /tvconfig/config/pq/Main.bin
chown system:system /tvconfig/config/pq/Main_Text.bin
chmod 666           /tvconfig/config/pq/Main_Text.bin
chown system:system /tvconfig/config/pq/Main_Color.bin
chmod 666           /tvconfig/config/pq/Main_Color.bin
chown system:system /tvconfig/config/pq/Main_Color_Text.bin
chmod 666           /tvconfig/config/pq/Main_Color_Text.bin
chown system:system /tvconfig/config/pq/HSY.bin
chmod 666           /tvconfig/config/pq/HSY.bin
chown system:system /tvconfig/config/pq/Main_TMO.bin
chmod 666           /tvconfig/config/pq/Main_TMO.bin
chown system:system /tvconfig/config/pq/Main_TMO_Text.bin
chmod 666           /tvconfig/config/pq/Main_TMO_Text.bin

/system/bin/mount -o rw,remount /tvdatabase
chown system:system /tvdatabase/Database/factory.db
chmod 666           /tvdatabase/Database/factory.db
chown system:system /tvdatabase/DatabaseBackup/factory.db
chmod 666           /tvdatabase/DatabaseBackup/factory.db
chown system:system /tvconfig/TvBackup/Database/factory.db
chmod 666           /tvconfig/TvBackup/Database/factory.db
chown system:system /tvdatabase/Database/customer.db
chmod 666           /tvdatabase/Database/customer.db
chown system:system /tvdatabase/DatabaseBackup/customer.db
chmod 666           /tvdatabase/DatabaseBackup/customer.db
chown system:system /tvconfig/TvBackup/Database/customer.db
chmod 666           /tvconfig/TvBackup/Database/customer.db

cp /vendor/pqfiles/K650WDG1_LT450B2/Customer_1_A.ini     /tvconfig/config/model/Customer_1.ini
cp /vendor/pqfiles/K650WDG1_LT450B2/Main.bin             /tvconfig/config/pq/Main.bin
cp /vendor/pqfiles/K650WDG1_LT450B2/Main_Text.bin        /tvconfig/config/pq/Main_Text.bin
cp /vendor/pqfiles/K650WDG1_LT450B2/Main_Color.bin       /tvconfig/config/pq/Main_Color.bin
cp /vendor/pqfiles/K650WDG1_LT450B2/Main_Color_Text.bin  /tvconfig/config/pq/Main_Color_Text.bin
cp /vendor/pqfiles/K650WDG1_LT450B2/HSY.bin              /tvconfig/config/pq/HSY.bin
cp /vendor/pqfiles/K650WDG1_LT450B2/Main_TMO.bin         /tvconfig/config/pq/Main_TMO.bin
cp /vendor/pqfiles/K650WDG1_LT450B2/Main_TMO_Text.bin    /tvconfig/config/pq/Main_TMO_Text.bin
cp /vendor/pqfiles/K650WDG1_LT450B2/factory.db           /tvdatabase/Database/factory.db
cp /vendor/pqfiles/K650WDG1_LT450B2/factory.db           /tvdatabase/DatabaseBackup/factory.db
cp /vendor/pqfiles/K650WDG1_LT450B2/factory.db           /tvconfig/TvBackup/Database/factory.db
cp /vendor/pqfiles/K650WDG1_LT450B2/customer.db          /tvdatabase/Database/customer.db
cp /vendor/pqfiles/K650WDG1_LT450B2/customer.db          /tvdatabase/DatabaseBackup/customer.db
cp /vendor/pqfiles/K650WDG1_LT450B2/customer.db          /tvconfig/TvBackup/Database/customer.db

