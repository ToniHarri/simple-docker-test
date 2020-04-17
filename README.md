# Simple Docker test project

Simple test project to test out docker functionality. Includes Nginx, Php7.2-fpm, MariaDb10.5, and PhpMyadmin.

The only part that is actual php-project, is the index.php. Rest of the files and folders are Docker related.

Goal of this little setup was to learn and understand the Docker environment a bit better. Idea was to have a somewhat common project setup running inside docker in a controlled environment. Nginx to run the web content, php for the business logic, database to store and fetch data, and phpmyadmin to visually inspect the database. 
Docker ports are configured in a way that they shouldn't conflict with your local ports if you have for instance Nginx already running in the background.

FUTURE TODO: 
- Mailcatcher to test mail sending.
- Composer installation and usage.
- Actual framework in use, like Symfony.
