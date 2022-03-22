function responder 
	docker run --rm -it --name responder --network=host responder:1.0 python3 Responder.py $argv
end
