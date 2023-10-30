PV:ti-j7 = "2.1"
LIC_FILES_CHKSUM:ti-j7 = "file://license.rst;md5=1dd070c98a281d18d9eefd938729b031"
SRC_URI:ti-j7 = "git://git.trustedfirmware.org/TF-A/trusted-firmware-a.git;protocol=https;name=tfa;branch=master"
SRCREV_tfa:ti-j7 = "d3e71ead6ea5bc3555ac90a446efec84ef6c6122"

TFA_BUILD_TARGET:ti-j7 = "all"
TFA_INSTALL_TARGET:ti-j7 = "bl31"
TFA_SPD:ti-j7 = "opteed"
TFA_PLATFORM:ti-j7 = "k3"

EXTRA_OEMAKE:append:ti-j7 = "${@ 'K3_USART=' + d.getVar('TFA_K3_USART') if d.getVar('TFA_K3_USART') else ''}"
EXTRA_OEMAKE:append:ti-j7 = "${@ 'K3_PM_SYSTEM_SUSPEND=' + d.getVar('TFA_K3_SYSTEM_SUSPEND') if d.getVar('TFA_K3_SYSTEM_SUSPEND') else ''}"

FILES:${PN}:ti-j7 += "/firmware/*"

COMPATIBLE_MACHINE:ti-j7 = "ti-j7"
