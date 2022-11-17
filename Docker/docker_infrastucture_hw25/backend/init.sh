#!/bin/bash
cp -r /opt/copy_dir/cert /opt/cert
cp /opt/copy_dir/php_page/test.php /opt/apache2/html
cp /opt/copy_dir/phpmyadmin_config/config.inc.php /opt/apache2/html/pma
cp /opt/copy_dir/apache2_configs/apache2.conf /etc/apache2
cp /opt/copy_dir/apache2_configs/other-vhosts-access-log.conf /etc/apache2/conf-available
cp /opt/copy_dir/apache2_configs/webub22.04.com.conf /etc/apache2/sites-available
rm -r /opt/copy_dir
