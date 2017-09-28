SYSTEMD_UNIT_INSTALL_DIR := /usr/lib/systemd/system

.PHONY: install uninstall

install:
	install -m=755 -D -d ${DESTDIR}${SYSTEMD_UNIT_INSTALL_DIR}
	install -m=644 -t ${DESTDIR}${SYSTEMD_UNIT_INSTALL_DIR} btrfs-snapshot@.service btrfs-snapshot@.timer

uninstall:
	rm ${DESTDIR}${SYSTEMD_UNIT_INSTALL_DIR}/btrfs-snapshot@.service
	rm ${DESTDIR}${SYSTEMD_UNIT_INSTALL_DIR}/btrfs-snapshot@.timer
