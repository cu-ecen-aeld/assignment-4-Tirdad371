AESD_ASSIGNMENTS_VERSION = main
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Tirdad371.git
AESD_ASSIGNMENTS_SITE_METHOD = git

define AESD_ASSIGNMENTS_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/writer              $(TARGET_DIR)/usr/bin/writer
    $(INSTALL) -m 0755 $(@D)/finder.sh           $(TARGET_DIR)/usr/bin/finder.sh
    $(INSTALL) -m 0755 $(@D)/finder-test.sh      $(TARGET_DIR)/usr/bin/finder-test.sh
    $(INSTALL) -m 0755 $(@D)/tester.sh           $(TARGET_DIR)/usr/bin/tester.sh
    $(INSTALL) -d                                $(TARGET_DIR)/etc/finder-app/conf
    $(INSTALL) -m 0644 $(@D)/conf/assignment.txt $(TARGET_DIR)/etc/finder-app/conf/
    $(INSTALL) -m 0644 $(@D)/conf/username.txt   $(TARGET_DIR)/etc/finder-app/conf/
endef

$(eval $(generic-package))
