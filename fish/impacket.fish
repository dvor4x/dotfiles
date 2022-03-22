function impacket
	docker run --rm -it --name impacket -v /share/impacket:/examples impacket:1.0 $argv
end
