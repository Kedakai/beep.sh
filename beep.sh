#!/bin/sh
#
# beep.sh
#
# part of pfSense (https://www.pfsense.org)
# Copyright (c) 2004-2016 Electric Sheep Fencing, LLC
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in
#    the documentation and/or other materials provided with the
#    distribution.
#
# 3. All advertising materials mentioning features or use of this software
#    must display the following acknowledgment:
#    "This product includes software developed by the pfSense Project
#    for use in the pfSense® software distribution. (http://www.pfsense.org/).
#
# 4. The names "pfSense" and "pfSense Project" must not be used to
#    endorse or promote products derived from this software without
#    prior written permission. For written permission, please contact
#    coreteam@pfsense.org.
#
# 5. Products derived from this software may not be called "pfSense"
#    nor may "pfSense" appear in their names without prior written
#    permission of the Electric Sheep Fencing, LLC.
#
# 6. Redistributions of any form whatsoever must retain the following
#    acknowledgment:
#
# "This product includes software developed by the pfSense Project
# for use in the pfSense software distribution (http://www.pfsense.org/).
#
# THIS SOFTWARE IS PROVIDED BY THE pfSense PROJECT ``AS IS'' AND ANY
# EXPRESSED OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE pfSense PROJECT OR
# ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
# NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
# OF THE POSSIBILITY OF SUCH DAMAGE.

BEEP=$(/usr/local/sbin/read_xml_tag.sh boolean system/disablebeep)
if [ "$BEEP" = "true" ]; then
        exit;
fi

# Standard note length
NOTELENGTH="25"

# this is super annoying in VMware, exit if in VMware
if [ -f /var/log/dmesg.boot ]; then
        VMWCOUNT=`/usr/bin/grep -c VMware /var/log/dmesg.boot`
        if [ $VMWCOUNT -gt 0 ]; then
                exit;
        fi
fi

# Check for different HZ
if [ -f /boot/loader.conf ]; then
        HZ=`/usr/bin/grep -c kern.hz /boot/loader.conf`
        if [ "$HZ" = "1" ]; then
                NOTELENGTH="10"
        fi
fi

if [ -c "/dev/speaker" ]; then
        if [ "$1" = "start" ]; then
                #/usr/local/bin/beep -p 500 $NOTELENGTH
                #/usr/local/bin/beep -p 400 $NOTELENGTH
                #/usr/local/bin/beep -p 600 $NOTELENGTH
                #/usr/local/bin/beep -p 800 $NOTELENGTH
                #/usr/local/bin/beep -p 800 $NOTELENGTH
                /usr/local/bin/beep -p 150 60
                sleep 0.05
                /usr/local/bin/beep -p 150 60
                sleep 0.05
                /usr/local/bin/beep -p 150 60
                sleep 0.05
                /usr/local/bin/beep -p 230 60
                sleep 0.05
                /usr/local/bin/beep -p 340 60
                sleep 0.05
                /usr/local/bin/beep -p 340 60
                sleep 0.05
                /usr/local/bin/beep -p 340 60
                sleep 0.05
                /usr/local/bin/beep -p 300 60
                sleep 0.05
                /usr/local/bin/beep -p 230 60
                sleep 0.05
                /usr/local/bin/beep -p 230 60
                sleep 0.05
                /usr/local/bin/beep -p 230 60
                sleep 0.05
                /usr/local/bin/beep -p 230 60
                sleep 0.05
                /usr/local/bin/beep -p 120 60
                sleep 0.05
                /usr/local/bin/beep -p 120 60
                sleep 0.05
                /usr/local/bin/beep -p 120 60
                sleep 0.05
                /usr/local/bin/beep -p 80  60
                sleep 0.6
                /usr/local/bin/beep -p 400 30 
                /usr/local/bin/beep -p 400 30 
                /usr/local/bin/beep -p 340 30 
                /usr/local/bin/beep -p 400 30 
                /usr/local/bin/beep -p 340 30 
                /usr/local/bin/beep -p 400 30 
                /usr/local/bin/beep -p 460 30 
                /usr/local/bin/beep -p 500 55
                /usr/local/bin/beep -p 400 30 
                /usr/local/bin/beep -p 400 30 
                /usr/local/bin/beep -p 300 30
                /usr/local/bin/beep -p 500 135
                sleep 0.2
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 370 80
                /usr/local/bin/beep -p 370 30
                /usr/local/bin/beep -p 370 30
                /usr/local/bin/beep -p 340 30
                /usr/local/bin/beep -p 400 30
                sleep 0.6
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 340 30
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 340 30
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 460 30
                /usr/local/bin/beep -p 500 55
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 600 30
                /usr/local/bin/beep -p 500 135
                sleep 0.2
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 400 30
                /usr/local/bin/beep -p 460 60
                sleep 0.6
                /usr/local/bin/beep -p 500 30
                /usr/local/bin/beep -p 500 30
                /usr/local/bin/beep -p 500 30
                /usr/local/bin/beep -p 500 60
                sleep 0.05
                /usr/local/bin/beep -p 400 60
                sleep 0.05
                /usr/local/bin/beep -p 400 60
                sleep 0.05
                /usr/local/bin/beep -p 500 60
                sleep 0.05
                /usr/local/bin/beep -p 635 60
                sleep 0.05
                /usr/local/bin/beep -p 635 60
                sleep 0.05
                /usr/local/bin/beep -p 635 60
                sleep 0.05
                /usr/local/bin/beep -p 580 60
                sleep 0.05
                /usr/local/bin/beep -p 500 60
                sleep 0.05
                /usr/local/bin/beep -p 500 60
                sleep 0.05
                /usr/local/bin/beep -p 500 60
                sleep 0.05
                /usr/local/bin/beep -p 500 60
                sleep 0.05
                /usr/local/bin/beep -p 400 60
                sleep 0.05
                /usr/local/bin/beep -p 400 60
                sleep 0.05
                /usr/local/bin/beep -p 400 60
                sleep 0.05
                /usr/local/bin/beep -p 320 60
        fi
        if [ "$1" = "stop" ]; then
                /usr/local/bin/beep -p 600 $NOTELENGTH
                /usr/local/bin/beep -p 800 $NOTELENGTH
                /usr/local/bin/beep -p 500 $NOTELENGTH
                /usr/local/bin/beep -p 400 $NOTELENGTH
                /usr/local/bin/beep -p 400 $NOTELENGTH
        fi
fi
