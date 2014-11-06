#! /usr/bin/env python
# -*- coding: utf-8 -*-

import sys

with open(sys.argv[1]) as f:
    for lines in f:
        if lines.startswith('#'):
            continue
        else:
            line = lines.rstrip().split('\t')
            chrom = line[0].replace('range=', '')
            start = line[3]
            end = line[4]
            bedline = "%s\t%s\t%s\n"%(chrom, start, end)
            sys.stdout.write(bedline)
