#!/usr/bin/env bash

########################
# include the magic
########################
. /usr/local/bin/demo-magic.sh

########################
# Configure the options
########################

#
# speed at which to simulate typing. bigger num = faster
#
TYPE_SPEED=17

#
# custom prompt
#
# see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/bash-prompt-escape-sequences.html for escape sequences
#
# DEMO_PROMPT="${GREEN}➜ ${CYAN}\W $ "

# text color
# DEMO_CMD_COLOR=$BLACK

# Prompt timeout is 1 second. Each wait will be that length.
# PROMPT_TIMEOUT=1

# hide the evidence
clear

# put your demo awesomeness here

pe "kubectl get namespaces"

pe "vcluster create kubecon"

pe "kubectl get namespaces"

pe "kubectl get pods -n kube-system"

pe "vcluster disconect"

pe "kubectl get pods -n kube-system"

# show a prompt so as not to reveal our true nature after
# the demo has concluded
p ""



