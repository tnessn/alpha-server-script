ps -ef |grep alpha-server-0.5.0-exec.jar|awk '{print $2}'|xargs kill -9
nohup java -Dloader.path=./plugins -jar alpha-server-0.5.0-exec.jar  --spring.datasource.url=jdbc:mysql://172.16.1.117:3306/saga?useSSL=false\&serverTimezone=Asia/Shanghai  --spring.datasource.username=dev --spring.datasource.password=fb54db8#1A7 --eureka.client.enabled=true --eureka.client.service-url.defaultZone=http://172.16.1.133:8761/eureka/,http://172.16.1.134:8761/eureka/,http://172.16.1.135:8761/eureka/ --server.port=8111 --alpha.server.port=8112 --spring.profiles.active=mysql --spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver >/dev/null 2>nohup.out &