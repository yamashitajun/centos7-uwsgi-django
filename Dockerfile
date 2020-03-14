#Dockerfile for Centos7+uwsgi+django2.1 Application for statistics
#元となるDockerimage
FROM centos:centos7.7.1908

#作成者
MAINTAINER jun

#実行コマンド
##create_app.shの導入と実行
ADD create_app.sh /usr/local/bin/create_app.sh
RUN chmod u+x /usr/local/bin/create_app.sh && /usr/local/bin/create_app.sh

#イメージ内に追加するファイル/フォルダ（Dockerfileからの相対パス）
ADD djangopro /django/

#nginxのコンフィグファイルを設定する
RUN ln -s /django/djangopro/mysite_nginx.conf /etc/nginx/conf.d/

##init.shの導入と実行
ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh

#コンテナ起動時に実行するコマンド
CMD ["/usr/local/bin/init.sh"]
