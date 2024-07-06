macos_install:
	./scripts/install_macos.sh
linux_install:
	./scripts/install_linux.sh
fix_perm:
	sudo chmod -R +x ./scripts
set_key:
	./scripts/encrypt_key.sh
get_key:
	./scripts/decrypt_key.sh

