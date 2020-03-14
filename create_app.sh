#!/bin/bash -x

#Nginxおよびpython3インストール用リポジトリの追加
yum install -y epel-release
yum install -y https://centos7.iuscommunity.org/ius-release.rpm

#python3.6インストール
yum install -y python36u python36u-libs python36u-devel python36u-pip

#Nginx のインストール
yum install -y nginx

#Development Toolsインストール（uWSGIインストールの前提）
sudo yum groupinstall -y "Development Tools"

#uWSGIインストール
pip3.6 install uwsgi

#djangoのインストール
pip3.6 install django==2.1.*

#プロジェクト用ディレクトリの作成
mkdir /django

