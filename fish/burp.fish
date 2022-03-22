function burp
	set XSOCK /tmp/.X11-unix
	set XAUTH /tmp/.docker.xauth
	cd /tmp
	touch $XAUTH
	xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
	docker run --rm -it --name burp --network=host -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH --env="DISPLAY" burp:1.0 
	cd -
end
