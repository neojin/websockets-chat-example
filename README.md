This is an example chat server that uses Rails, WebSockets, and EventMachine (via em-websocket gem)

By default, em-websocket server will run on port 8080. Edit config/eventchat.yml to change this and other options. 

The em-websocket code is in config/initializers/em_websocket.rb

Some warnings:

The EM server is started as its own thread. This works with WEBrick but probably won't work using thin/unicorn, so use it at your own risk.

Socket broadcasting is handled in a simple way by storing an array in memory of all the sockets to broadcast to. Obviously this won't work if you set up multiple instances of the server.

For whatever reason, WebSocket.onclose will not fire. I am not sure why. (If anyone knows why, I would love an explanation!)

I have only tested this in Chrome, but it should work on any browser that is WebSocket compliant. 
