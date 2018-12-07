FROM atlassian/confluence-server:6.6

#MAINTAINER 

# 传入破解补丁
ADD crack/atlassian-extras-decoder-v2-3.2.jar ${CONFLUENCE_INSTALL_DIR}/confluence/WEB-INF/lib/
ADD crack/mysql-connector-java-5.1.33-bin.jar ${CONFLUENCE_INSTALL_DIR}/confluence/WEB-INF/lib/

# 设置文件属组
RUN chown -R ${RUN_USER}:${RUN_GROUP} ${CONFLUENCE_INSTALL_DIR}/confluence/WEB-INF/lib/atlassian-extras-decoder-v2-3.2.jar
RUN chown -R ${RUN_USER}:${RUN_GROUP} ${CONFLUENCE_INSTALL_DIR}/confluence/WEB-INF/lib/mysql-connector-java-5.1.33-bin.jar

CMD ["/entrypoint.sh", "-fg"]

ENTRYPOINT ["/sbin/tini", "--"]
