Web Server Task using Nginx
This repository contains files and instructions for setting up a web server using Nginx, a popular open-source web server software. Nginx is known for its high performance, stability, and ability to handle a large number of concurrent connections.

Prerequisites
To use this web server, you need to have the following software installed on your machine:

Nginx
A web browser
Installation
Clone the repository onto your machine using the command git clone https://github.com/yourusername/web-server-task.git.
Navigate to the web-server-task directory using the command cd web-server-task.
Open the index.html file in a web browser to verify that the file is accessible.
Open the Nginx configuration file nginx.conf located in the conf folder using a text editor.
Modify the server_name directive to match the domain name or IP address of your server.
Modify the root directive to point to the directory where the index.html file is located.
Save the nginx.conf file and exit the text editor.
Start the Nginx server using the command sudo nginx.
Open a web browser and enter the domain name or IP address of your server in the address bar to verify that the web server is accessible.
Configuration
The nginx.conf file is the main configuration file for the Nginx web server. It contains directives that control how Nginx handles incoming HTTP requests and serves content.

Some important directives to note include:

worker_processes: Specifies the number of worker processes that Nginx should spawn to handle incoming requests.
error_log: Specifies the path to the error log file.
access_log: Specifies the path to the access log file.
server: Defines a virtual server that handles incoming requests.
location: Defines how Nginx should handle requests for a specific URI.
Usage
To use the web server, start the Nginx server using the command sudo nginx and navigate to the domain name or IP address of your server in a web browser. By default, Nginx listens on port 80, so you do not need to specify a port number in the URL.

To stop the Nginx server, use the command sudo nginx -s stop. To restart the server, use the command sudo nginx -s reload.
