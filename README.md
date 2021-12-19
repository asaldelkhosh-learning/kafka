# Mini-Browser

Create a simple web-browser with ruby.<br />
Basically you use a **domain:port** input to connect to a server, 
my client in ruby, will create a connection to the server and will show you the response and headers.

### How it works
By TCPSocekt of ruby we create a connection to the given server.

First we create a request:
```ruby
request = "GET #{path} HTTP/1.0\r\n\r\n"
```

Then we open a TCP/IP connection to communicate with that server:
```ruby
socket = TCPSocket.open(host.strip, port.to_i)
socket.print(request)
```

### How to use?
Just clone the project and run it with the following command:
```shell
ruby client.rb
```
