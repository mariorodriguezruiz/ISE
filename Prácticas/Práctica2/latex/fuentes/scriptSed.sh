#!/bin/bash

echo "Cambiando el puerto de ssh..."
sed -i "/Port / c Port $1" /etc/ssh/sshd_config
echo "Puerto ssh modificado. Su nuevo valor es $1"

echo "Reinicio del servicio ssh para efectuar cambios..."
service sshd restart
