FROM centos7_ssh

# 更新
RUN yum -y update;
RUN yum -y install openssl;
RUN yum clean all;

COPY start.sh /root/

WORKDIR /opt/app/

EXPOSE 8001
EXPOSE 9001

ENTRYPOINT ["/root/start.sh"]
