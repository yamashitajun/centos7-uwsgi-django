#Dockerfile for Centos7+uwsgi+django2.1 Application for statistics
#���ƂȂ�Dockerimage
FROM centos:centos7.7.1908

#�쐬��
MAINTAINER jun

#���s�R�}���h
##create_app.sh�̓����Ǝ��s
ADD create_app.sh /usr/local/bin/create_app.sh
RUN chmod u+x /usr/local/bin/create_app.sh && /usr/local/bin/create_app.sh

#�C���[�W���ɒǉ�����t�@�C��/�t�H���_�iDockerfile����̑��΃p�X�j
ADD djangopro /django/

#nginx�̃R���t�B�O�t�@�C����ݒ肷��
RUN ln -s /django/djangopro/mysite_nginx.conf /etc/nginx/conf.d/

##init.sh�̓����Ǝ��s
ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh

#�R���e�i�N�����Ɏ��s����R�}���h
CMD ["/usr/local/bin/init.sh"]
