PACKAGECONFIG = "python update-alternatives"
PACKAGECONFIG[update-alternatives] = ",,,"

PROVIDES_remove_oel = "${@'virtual/update-alternatives' if 'update-alternatives' not in PACKAGECONFIG.split() else ''}"

do_install_append_oel () {
    if ${@'true' if 'update-alternatives' not in PACKAGECONFIG.split() else 'false'}; then
        rm -f "${D}${bindir}/update-alternatives"
    fi
}
