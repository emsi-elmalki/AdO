#!/bin/bash


# Installation des Modules Odoo
cp -R /home/AdO/garazd_product_label /usr/lib/python3/dist-packages/odoo/addons/
cp -R /home/AdO/hw_escpos_network_printer /usr/lib/python3/dist-packages/odoo/addons/
cp -R /home/AdO/payment_cmi /usr/lib/python3/dist-packages/odoo/addons/
cp -R /home/AdO/product_barcode /usr/lib/python3/dist-packages/odoo/addons/

# Installation de la modification de PoS
# Intégration d'un champs de saisie de code-barre dans le PdV
cp /home/AdO/Barcode_PoS/Chrome.js /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/js/Chrome.js
cp /home/AdO/Barcode_PoS/Chrome.xml /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/xml
cp /home/AdO/Barcode_PoS/DebugWidget.js /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/js/ChromeWidgets
cp /home/AdO/Barcode_PoS/DebugWidget.xml /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/xml/ChromeWidgets
cp /home/AdO/Barcode_PoS/pos.css /usr/lib/python3/dist-packages/odoo/addons/point_of_sale/static/src/css

# Mise à jour “apt“
apt update
apt upgrade -y
apt autoremove -y

# Reboot de la machine
echo “Appuyer sur une touche pour redémarrer la machine...“
read
reboot
