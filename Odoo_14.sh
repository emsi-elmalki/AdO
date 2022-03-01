#!/bin/bash

# Mise à jour “apt“
apt update
apt upgrade -y

# Installation de “PostGreSQL“
apt install -y postgresql postgresql-contrib

# su - postgres
# createuser --interactive -P AdO

# Password
# P@ssw0rd-AdO

# Enter password for new role:
# Enter it again:
# Shall the new role be a superuser? (y/n) n
# Shall the new role be allowed to create databases? (y/n) y
# Shall the new role be allowed to create more new roles? (y/n) n

# createdb -O AdO db-AdO
# exit

# Mise à jour “apt“
# apt update
# apt upgrade -y

# Installation de “wkthmltopdf“
# apt install wkhtmltopdf -y
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.bionic_amd64.deb
apt install -y ./wkhtmltox_0.12.6-1.bionic_amd64.deb

apt install -y unzip build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git libpq-dev libsasl2-dev libldap2-dev ccze node-less








# useradd -m -U -r -s /bin/bash AdO
# passwd AdO
# Password
# P@ssw0rd-AdO

# su - AdO

# Téléchargement depuis GitHub
# git clone https://github.com/emsi-elmalki/AdO.git

# exit













# Installation de “pip3“
apt install python3-pip -y

pip install --upgrade pip
pip install setuptools wheel

# Installation de “reportlab“ & “num2words“
pip3 install reportlab --upgrade
pip3 install num2words --upgrade

# Installation de “Odoo“
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/14.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo -y

# Installation des Modules Odoo
# Module “product_barcode“
# Cybrosys
# Génération de code-barre pour les nouveaux produits
cp -R /home/AdO/AdO/garazd_product_label /usr/lib/python3/dist-packages/odoo/addons/
cp -R /home/AdO/AdO/hw_escpos_network_printer /usr/lib/python3/dist-packages/odoo/addons/
cp -R /home/AdO/AdO/payment_cmi /usr/lib/python3/dist-packages/odoo/addons/
cp -R /home/AdO/AdO/product_barcode /usr/lib/python3/dist-packages/odoo/addons/
# Autre module
#...

# Mise à jour “apt“
apt update
apt upgrade -y
apt autoremove -y

# Installation de la modification de PoS
# Intégration d'un champs de saisie de code-barre dans le PdV
cp /home/AdO/AdO/Barcode_PoS/Chrome.js /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/js/Chrome.js
cp /home/AdO/AdO/Barcode_PoS/Chrome.xml /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/xml
cp /home/AdO/AdO/Barcode_PoS/DebugWidget.js /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/js/ChromeWidgets
cp /home/AdO/AdO/Barcode_PoS/DebugWidget.xml /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/xml/ChromeWidgets
cp /home/AdO/AdO/Barcode_PoS/pos.css /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/css

# Reboot de la machine
echo “Appuyer sur une touche pour redémarrer la machine...“
read
reboot