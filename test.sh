#! /bin/bash

match=$(cat log.txt | grep 'GRANT SELECT, INSERT, UPDATE, DELETE ON `ShopDB`.* TO `webappuser`@`%`' || true)
if [ -z "$match" ]; then 
    echo "Unable to verify permissions for the webappuser"
    exit 1
else
    echo "webappuser permissions are correct"
fi

match=$(cat log.txt | grep 'GRANT ALL PRIVILEGES ON `ShopDB`.* TO `deploymentuser`@`%`' || true)
if [ -z "$match" ]; then 
    echo "Unable to verify permissions for the deploymentuser"
    exit 1
else
    echo "deploymentuser permissions are correct"
fi
