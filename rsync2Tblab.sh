#!/bin/bash
#
# rsyncRlim.sh
# Copyright (C) 2014 ricky <ricky@tblab-Precision-T1650>
#
# Distributed under terms of the MIT license.
#

sudo rsync -avz -e "ssh -i /home/ricky/.key/server-rsync-key" --progress --log-file=/home/ricky/Log/$(date +%Y%m%d)_rsync.log /home/ricky/Rlim/ ricky@tblab-csi.nus.edu.sg:/home/ricky/Rlim/
