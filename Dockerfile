# Sử dụng image Tomcat 9.1 làm base image
FROM tomcat:10.1

# Xóa các ứng dụng có sẵn trong thư mục webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Sao chép file WAR vào thư mục webapps của Tomcat
COPY ProjectCaNhan.war /usr/local/tomcat/webapps/your-application.war

# Mở cổng 8080 để có thể truy cập ứng dụng
EXPOSE 8080

# Lệnh chạy Tomcat khi container khởi động
CMD ["catalina.sh", "run"]
