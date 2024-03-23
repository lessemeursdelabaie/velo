URL?=https: //lessemeursdelabaie.github.io/velo/
serve:
	python3 -m http.server

venv:
	python3 -m venv venv
	venv/bin/pip install -U qrcode[pil]

qr: venv
	venv/bin/qr $(URL) > qrcode.png

push:
	git push git@github.com:lessemeursdelabaie/velo.git main
