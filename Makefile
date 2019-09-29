all:
	docker build -t docker-tftpd .

run:
	docker run -it -d -p 69:69/udp --name tftpd -v $PWD/tftp:/tftpboot docker-tftpd
