#!/bin/bash
#
# rsyncRlim.sh
# Copyright (C) 2014 ricky <ricky@tblab-Precision-T1650>
#
# Distributed under terms of the MIT license.
#

#sudo rsync -avz -e "ssh -i /home/ricky/.key/server-rsync-key" --progress --delete --log-file=/home/ricky/Log/$(date +%Y%m%d)_rsync.log ricky@tblab-csi.nus.edu.sg:/home/ricky/Rlim/ /home/ricky/Rlim/
sudo rsync -avz -e "ssh -i /home/ricky/.key/server-rsync-key" --progress --log-file=/home/ricky/Log/$(date +%Y%m%d)_rsync.log ricky@tblab-csi.nus.edu.sg:/home/ricky/Rlim/ /home/ricky/Rlim/
