#!/bin/bash
java    -cp nclw/:lib/ncl-taskschedsim.jar:lib/ncl-sfc.jar:lib/ncl-sfcworkflow.jar:lib/commons-net-3.6.jar:lib/commons-math-2.0.jar:lib/log4j-api-2.11.1.jar:lib/ganymed-ssh2-build210.jar:lib/log4j-core-2.11.1.jar:lib/jackson-core-2.9.8.jar:lib/jackson-databind-2.9.8.jar:lib/jackson-annotations-2.9.8.jar:lib/jsch-0.1.55.jar  org.ncl.workflow.main.ModuleUpMain  nclw_hosts
