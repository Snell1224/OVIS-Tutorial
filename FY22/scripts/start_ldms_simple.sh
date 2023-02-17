#!/bin/bash
 
TOP=/opt/ovis
export LD_LIBRARY_PATH=$TOP/lib64/:$LD_LIBRARY_PATH
export LDMSD_PLUGIN_LIBPATH=$TOP/lib64/ovis-ldms
export PATH=$TOP/sbin:$TOP/bin:$PATH
export ZAP_LIBPATH=$TOP/lib64/ovis-ldms
export PYTHONPATH=$TOP/lib/python3.6/site-packages/:$PYTHONPATH
 
ldmsd -x sock:10001 -l /home/user1/ldmscon2021/basic/exercises/ldms/logs/sampler1.log -c /home/user1/ldmscon2021/basic/exercises/ldms/conf/E1/simple_sampler.conf
