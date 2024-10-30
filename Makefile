all: server

server: http-server.c number-server.c
	gcc http-server.c number-server.c -std=c11 -o server -Wall -Wno-unused-variable -fsanitize=address -g

clean:
	rm -f server
