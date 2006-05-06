#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: pyicqt.sh,v 1.2 2006/05/06 02:37:14 schnoebe Exp $
#
#   startup script for the PyICQt IM transport for Jabber
#   uses the twistd application engine
#
# PROVIDE: pyicqt
# REQUIRE: DAEMON s2s
#

name="pyicqt"
rcvar=$name
command_interpreter="@PYTHONBIN@"
required_files="@PKG_SYSCONFDIR@/pyicqt.xml"
command="@PREFIX@/bin/PyICQt"
pyicqt_user="@JABBERD_USER@"
pidfile="@JABBERD_PIDDIR@/${name}.pid"
logfile="@JABBERD_LOGDIR@/${name}.log"
command_args="-b -l ${logfile}"
stop_postcmd="remove_pidfile"
start_precmd="ensure_piddir"

ensure_piddir()
{
	mkdir -p @JABBERD_PIDDIR@
	chown @JABBERD_USER@ @JABBERD_PIDDIR@
}

remove_pidfile()
{
        if [ -f $pidfile ]; then
            rm -f $pidfile
        fi
}

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO@ -n " ${name}"
	@SU@ ${pyicqt_user} -c "${command} ${pyicqt_flags} ${command_args}"
fi
