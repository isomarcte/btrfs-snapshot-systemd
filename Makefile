SYSTEMD_UNIT_INSTALL_DIR := /usr/lib/systemd/system

.PHONY: install uninstall

install:
	install -D -t ${DESTDIR}${SYSTEMD_UNIT_INSTALL_DIR} btrfs-snapshot@.service btrfs-snapshot@.timer

uninstall:
	rm ${DESTDIR}${SYSTEMD_UNIT_INSTALL_DIR}/btrfs-snapshot@.service
	rm ${DESTDIR}${SYSTEMD_UNIT_INSTALL_DIR}/btrfs-snapshot@.timer
