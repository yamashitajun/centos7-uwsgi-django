#!/bin/bash -x

cd /django/djangopro

#staticファイルの収集
python3.6 manage.py collectstatic

#nginxの起動
systemctl start nginx.service

#uwsgiの起動
##TCPソケットの場合
uwsgi --socket :8001 --module config.wsgi &

##Unixソケットの場合
#uwsgi --socket djangopro.sock --module config.wsgi --chmod-socket=666 &

##iniファイルを利用した起動
#uwsgi --ini mysite_uwsgi.ini &

#cat <<EOF>>~/bashrc
#trap 'pkill -TERM ruby-mri; sleep 3; exit 0' TERM
#EOF

exec /bin/bash