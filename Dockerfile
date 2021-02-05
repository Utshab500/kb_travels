FROM amazonlinux:2018.03

RUN yum update -y
RUN yum install php72 vim httpd24  git curl unzip wget mod24_ssl -y
RUN yum install php72-curl php72-mysql php72-bcmath php72-gd php72-intl php72-mbstring php72-mcrypt php72-soap php72-xml php72-xsl php72-zip php72-json php72-iconv php72-mysqlnd.x86_64 -y

RUN mkdir /var/www/html/public_html
COPY src /var/www/html/public_html

RUN chown apache:apache -R /var/www/html/public_html

ARG DB_HOST
ARG DB_USER
ARG DB_PASS
ARG DB_NAME

RUN echo "SetEnv DB_HOST "$DB_HOST >> /etc/httpd/conf/httpd.conf
RUN echo "SetEnv DB_USER "$DB_USER >> /etc/httpd/conf/httpd.conf
RUN echo "SetEnv DB_PASS "$DB_PASS >> /etc/httpd/conf/httpd.conf
RUN echo "SetEnv DB_NAME "$DB_NAME >> /etc/httpd/conf/httpd.conf

RUN echo "IncludeOptional vhosts/*.conf" >> /etc/httpd/conf/httpd.conf
COPY vhosts /etc/httpd/vhosts

EXPOSE 80
EXPOSE 443

RUN ln -sf /dev/stdout /etc/httpd/logs/ssl-access.log \
        && ln -sf /dev/stderr /etc/httpd/logs/ssl-error.log

COPY copy.sh /copy.sh
RUN chmod 777 copy.sh
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
