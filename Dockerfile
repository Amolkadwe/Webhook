# Use the Ubuntu 18.04 base image
FROM ubuntu:18.04

# Install Apache (httpd) and create a custom HTML file
RUN apt update -y && apt install -y apache2
RUN echo "<html><head><title>Hello from OpenShift v2</title><style>body {font-family: Arial, sans-serif;background-color: #f0f0f0;text-align: center;padding: 40px;}h1 {color: #333;background-color: #fff;padding: 20px;border-radius: 5px;box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);}</style></head><body><h1>Hello from OpenShift v2</h1></body></html>" > /var/www/html/index.html

# Start the Apache web server in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
