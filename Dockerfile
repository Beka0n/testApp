# Використовуємо базовий образ Ubuntu
FROM ubuntu

# Встановлюємо Nginx
RUN apt-get update && apt-get install -y nginx

# Копіюємо вашу HTML-сторінку в директорію Nginx
COPY index.html /var/www/html/index.html

# Відкриваємо порт 80 для доступу до веб-сервера
EXPOSE 80/tcp

# Запускаємо Nginx при запуску контейнера
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
