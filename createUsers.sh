echo "Creating users..."

useradd -N -m -c "Carlos" -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123) carlos
useradd -N -m -c "Maria" -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123) maria
useradd -N -m -c "João" -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123) joao

useradd -N -m -c "Débora" -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123) debora
useradd -N -m -c "Sebastiana" -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123) sebastiana
useradd -N -m -c "Roberto" -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123) roberto

useradd -N -m -c "Josefina" -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123) josefina
useradd -N -m -c "Amanda" -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123) amanda
useradd -N -m -c "Rogério" -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123) rogerio

echo "Users successfully created!"