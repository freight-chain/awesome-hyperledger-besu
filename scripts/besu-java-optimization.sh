#!/usr/bin/env sh

#
# Copyright 2015 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

##############################################################################
##
##  besu start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done
SAVED="`pwd`"
cd "`dirname \"$PRG\"`/.." >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

APP_NAME="besu"
APP_BASE_NAME=`basename "$0"`

# Add default JVM options here. You can also use JAVA_OPTS and BESU_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS='"-Dvertx.disableFileCPResolving=true" "-Dbesu.home=$APP_HOME" "-Dlog4j.shutdownHookEnabled=false" "--add-opens" "java.base/sun.security.provider=ALL-UNNAMED"'

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

warn () {
    echo "$*"
}

die () {
    echo
    echo "$*"
    echo
    exit 1
}

# OS specific support (must be 'true' or 'false').
cygwin=false
msys=false
darwin=false
nonstop=false
case "`uname`" in
  CYGWIN* )
    cygwin=true
    ;;
  Darwin* )
    darwin=true
    ;;
  MINGW* )
    msys=true
    ;;
  NONSTOP* )
    nonstop=true
    ;;
esac

CLASSPATH=$APP_HOME/lib/besu-1.3.8.jar:$APP_HOME/lib/besu-1.3.8.jar:$APP_HOME/lib/jackson-datatype-jdk8-2.9.8.jar:$APP_HOME/lib/besu-clique-1.3.8.jar:$APP_HOME/lib/besu-ibftlegacy-1.3.8.jar:$APP_HOME/lib/besu-ibft-1.3.8.jar:$APP_HOME/lib/besu-consensus-common-1.3.8.jar:$APP_HOME/lib/besu-retesteth-1.3.8.jar:$APP_HOME/lib/besu-ethereum-stratum-1.3.8.jar:$APP_HOME/lib/besu-api-1.3.8.jar:$APP_HOME/lib/besu-blockcreation-1.3.8.jar:$APP_HOME/lib/besu-eth-1.3.8.jar:$APP_HOME/lib/besu-permissioning-1.3.8.jar:$APP_HOME/lib/besu-p2p-1.3.8.jar:$APP_HOME/lib/besu-core-1.3.8.jar:$APP_HOME/lib/besu-config-1.3.8.jar:$APP_HOME/lib/besu-trie-1.3.8.jar:$APP_HOME/lib/besu-crypto-1.3.8.jar:$APP_HOME/lib/enclave-1.3.8.jar:$APP_HOME/lib/besu-ethereum-rlp-1.3.8.jar:$APP_HOME/lib/besu-plugin-rocksdb-1.3.8.jar:$APP_HOME/lib/besu-kvstore-1.3.8.jar:$APP_HOME/lib/besu-pipeline-1.3.8.jar:$APP_HOME/lib/besu-tasks-1.3.8.jar:$APP_HOME/lib/besu-metrics-rocksdb-1.3.8.jar:$APP_HOME/lib/besu-metrics-core-1.3.8.jar:$APP_HOME/lib/besu-nat-1.3.8.jar:$APP_HOME/lib/besu-util-1.3.8.jar:$APP_HOME/lib/plugin-api-1.3.8.jar:$APP_HOME/lib/vertx-web-3.8.0.jar:$APP_HOME/lib/vertx-auth-jwt-3.8.0.jar:$APP_HOME/lib/vertx-unit-3.8.0.jar:$APP_HOME/lib/vertx-web-common-3.8.0.jar:$APP_HOME/lib/vertx-auth-common-3.8.0.jar:$APP_HOME/lib/vertx-jwt-3.8.0.jar:$APP_HOME/lib/vertx-core-3.8.0.jar:$APP_HOME/lib/jackson-databind-2.10.0.jar:$APP_HOME/lib/graphql-java-13.0.jar:$APP_HOME/lib/tuweni-config-0.9.0.jar:$APP_HOME/lib/guava-28.1-jre.jar:$APP_HOME/lib/picocli-3.9.6.jar:$APP_HOME/lib/log4j-slf4j-impl-2.12.1.jar:$APP_HOME/lib/log4j-core-2.12.1.jar:$APP_HOME/lib/log4j-api-2.12.1.jar:$APP_HOME/lib/spring-security-crypto-5.2.0.RELEASE.jar:$APP_HOME/lib/jackson-core-2.10.0.jar:$APP_HOME/lib/bcprov-jdk15on-1.64.jar:$APP_HOME/lib/tuweni-toml-0.9.0.jar:$APP_HOME/lib/simpleclient_pushgateway-0.7.0.jar:$APP_HOME/lib/simpleclient_common-0.7.0.jar:$APP_HOME/lib/simpleclient_hotspot-0.7.0.jar:$APP_HOME/lib/simpleclient-0.7.0.jar:$APP_HOME/lib/snappy-java-1.1.7.3.jar:$APP_HOME/lib/okhttp-4.2.2.jar:$APP_HOME/lib/org.jupnp-2.5.2.jar:$APP_HOME/lib/org.jupnp.support-2.5.2.jar:$APP_HOME/lib/rocksdbjni-6.2.4.jar:$APP_HOME/lib/jackson-annotations-2.10.0.jar:$APP_HOME/lib/antlr4-runtime-4.7.2.jar:$APP_HOME/lib/slf4j-api-1.7.25.jar:$APP_HOME/lib/java-dataloader-2.1.1.jar:$APP_HOME/lib/reactive-streams-1.0.2.jar:$APP_HOME/lib/failureaccess-1.0.1.jar:$APP_HOME/lib/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar:$APP_HOME/lib/jsr305-3.0.2.jar:$APP_HOME/lib/checker-qual-2.8.1.jar:$APP_HOME/lib/error_prone_annotations-2.3.2.jar:$APP_HOME/lib/j2objc-annotations-1.3.jar:$APP_HOME/lib/animal-sniffer-annotations-1.18.jar:$APP_HOME/lib/netty-handler-proxy-4.1.34.Final.jar:$APP_HOME/lib/netty-codec-http2-4.1.34.Final.jar:$APP_HOME/lib/netty-codec-http-4.1.34.Final.jar:$APP_HOME/lib/netty-handler-4.1.34.Final.jar:$APP_HOME/lib/netty-resolver-dns-4.1.34.Final.jar:$APP_HOME/lib/netty-codec-socks-4.1.34.Final.jar:$APP_HOME/lib/netty-codec-dns-4.1.34.Final.jar:$APP_HOME/lib/netty-codec-4.1.34.Final.jar:$APP_HOME/lib/netty-transport-4.1.34.Final.jar:$APP_HOME/lib/netty-buffer-4.1.34.Final.jar:$APP_HOME/lib/netty-resolver-4.1.34.Final.jar:$APP_HOME/lib/netty-common-4.1.34.Final.jar:$APP_HOME/lib/vertx-bridge-common-3.8.0.jar:$APP_HOME/lib/okio-2.2.2.jar:$APP_HOME/lib/kotlin-stdlib-1.3.50.jar:$APP_HOME/lib/kotlin-stdlib-common-1.3.50.jar:$APP_HOME/lib/annotations-13.0.jar

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
fi

# Increase the maximum file descriptors if we can.
if [ "$cygwin" = "false" -a "$darwin" = "false" -a "$nonstop" = "false" ] ; then
    MAX_FD_LIMIT=`ulimit -H -n`
    if [ $? -eq 0 ] ; then
        if [ "$MAX_FD" = "maximum" -o "$MAX_FD" = "max" ] ; then
            MAX_FD="$MAX_FD_LIMIT"
        fi
        ulimit -n $MAX_FD
        if [ $? -ne 0 ] ; then
            warn "Could not set maximum file descriptor limit: $MAX_FD"
        fi
    else
        warn "Could not query maximum file descriptor limit: $MAX_FD_LIMIT"
    fi
fi

# For Darwin, add options to specify how the application appears in the dock
if $darwin; then
    GRADLE_OPTS="$GRADLE_OPTS \"-Xdock:name=$APP_NAME\" \"-Xdock:icon=$APP_HOME/media/gradle.icns\""
fi

# For Cygwin or MSYS, switch paths to Windows format before running java
if [ "$cygwin" = "true" -o "$msys" = "true" ] ; then
    APP_HOME=`cygpath --path --mixed "$APP_HOME"`
    CLASSPATH=`cygpath --path --mixed "$CLASSPATH"`
    JAVACMD=`cygpath --unix "$JAVACMD"`

    # We build the pattern for arguments to be converted via cygpath
    ROOTDIRSRAW=`find -L / -maxdepth 1 -mindepth 1 -type d 2>/dev/null`
    SEP=""
    for dir in $ROOTDIRSRAW ; do
        ROOTDIRS="$ROOTDIRS$SEP$dir"
        SEP="|"
    done
    OURCYGPATTERN="(^($ROOTDIRS))"
    # Add a user-defined pattern to the cygpath arguments
    if [ "$GRADLE_CYGPATTERN" != "" ] ; then
        OURCYGPATTERN="$OURCYGPATTERN|($GRADLE_CYGPATTERN)"
    fi
    # Now convert the arguments - kludge to limit ourselves to /bin/sh
    i=0
    for arg in "$@" ; do
        CHECK=`echo "$arg"|egrep -c "$OURCYGPATTERN" -`
        CHECK2=`echo "$arg"|egrep -c "^-"`                                 ### Determine if an option

        if [ $CHECK -ne 0 ] && [ $CHECK2 -eq 0 ] ; then                    ### Added a condition
            eval `echo args$i`=`cygpath --path --ignore --mixed "$arg"`
        else
            eval `echo args$i`="\"$arg\""
        fi
        i=`expr $i + 1`
    done
    case $i in
        0) set -- ;;
        1) set -- "$args0" ;;
        2) set -- "$args0" "$args1" ;;
        3) set -- "$args0" "$args1" "$args2" ;;
        4) set -- "$args0" "$args1" "$args2" "$args3" ;;
        5) set -- "$args0" "$args1" "$args2" "$args3" "$args4" ;;
        6) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" ;;
        7) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" ;;
        8) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" ;;
        9) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" "$args8" ;;
    esac
fi

# Escape application args
save () {
    for i do printf %s\\n "$i" | sed "s/'/'\\\\''/g;1s/^/'/;\$s/\$/' \\\\/" ; done
    echo " "
}
APP_ARGS=`save "$@"`

# Collect all arguments for the java command, following the shell quoting and substitution rules
eval set -- $DEFAULT_JVM_OPTS $JAVA_OPTS $BESU_OPTS -classpath "\"$CLASSPATH\"" org.hyperledger.besu.Besu "$APP_ARGS"

exec "$JAVACMD" "$@"

