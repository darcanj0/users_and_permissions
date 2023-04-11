#! /bin/bash
su

echo "Creating folders..."

mkdir publico adm ven sec

echo "Folders successfully created!"

#groups
echo "Creating groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Groups successfully created!"

#group folders
echo "Adding groups to its folders..."

chown root publico
chown root:GRP_ADM adm
chown root:GRP_VEN ven 
chown root:GRP_SEC sec

echo "Done!"

#users
echo "Creating users..."

useradd -m -c "Carlos" -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123) carlos
useradd -m -c "Maria" -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123) maria
useradd -m -c "João" -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123) joao

useradd -m -c "Débora" -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123) debora
useradd -m -c "Sebastiana" -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123) sebastiana
useradd -m -c "Roberto" -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123) roberto

useradd -m -c "Josefina" -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123) josefina
useradd -m -c "Amanda" -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123) amanda
useradd -m -c "Rogério" -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123) rogerio

echo "Users successfully created!"

#permissions
chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec
