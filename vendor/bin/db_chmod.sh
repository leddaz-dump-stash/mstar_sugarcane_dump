#!/system/bin/sh
/system/bin/mount -o rw,remount /tvdatabase
chmod 666 /tvdatabase/Database/customer.db-journal
chmod 666 /tvdatabase/Database/factory.db-journal
chmod 666 /tvdatabase/Database/user_setting.db-journal