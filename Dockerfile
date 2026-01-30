FROM httpd:latest

# อัปเดตรายการแพ็กเกจและอัปเกรด library ที่มีช่องโหว่
RUN apt-get update && apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ./public-html/ /usr/local/apache2/htdocs/
