
default: build

prereq:
	snap install snapcraft --classic


clean:
	@rm -rf snap
	@rm -rf stage
	@rm -rf prime
	@rm -rf parts
	@rm -rf *.snap
	@rm -rf *.zip

build:
	snapcraft

install:
	snap install packer-io*.snap --dangerous

remove:
	snap remove packer-io

login:
	snapcraft login

push:
	snapcraft push packer-io*.snap

dev: remove build install
