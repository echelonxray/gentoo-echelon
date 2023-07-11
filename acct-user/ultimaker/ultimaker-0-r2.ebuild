# Copyright 2020-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit acct-user

DESCRIPTION="User for ultimaker"
ACCT_USER_ID=369
ACCT_USER_GROUPS=( ${PN} )

acct-user_add_deps
