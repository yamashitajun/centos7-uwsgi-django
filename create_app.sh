#!/bin/bash -x

#Nginx�����python3�C���X�g�[���p���|�W�g���̒ǉ�
yum install -y epel-release
yum install -y https://centos7.iuscommunity.org/ius-release.rpm

#python3.6�C���X�g�[��
yum install -y python36u python36u-libs python36u-devel python36u-pip

#Nginx �̃C���X�g�[��
yum install -y nginx

#Development Tools�C���X�g�[���iuWSGI�C���X�g�[���̑O��j
sudo yum groupinstall -y "Development Tools"

#uWSGI�C���X�g�[��
pip3.6 install uwsgi

#django�̃C���X�g�[��
pip3.6 install django==2.1.*

#�v���W�F�N�g�p�f�B���N�g���̍쐬
mkdir /django

