#!/bin/bash -x

cd /django/djangopro

#static�t�@�C���̎��W
python3.6 manage.py collectstatic

#nginx�̋N��
systemctl start nginx.service

#uwsgi�̋N��
##TCP�\�P�b�g�̏ꍇ
uwsgi --socket :8001 --module config.wsgi &

##Unix�\�P�b�g�̏ꍇ
#uwsgi --socket djangopro.sock --module config.wsgi --chmod-socket=666 &

##ini�t�@�C���𗘗p�����N��
#uwsgi --ini mysite_uwsgi.ini &

#cat <<EOF>>~/bashrc
#trap 'pkill -TERM ruby-mri; sleep 3; exit 0' TERM
#EOF

exec /bin/bash