#!/bin/bash

export MERMAID_HOME=`pwd`

export PATH=$MERMAID_HOME/bin:$PATH

make_opt_link mermaid $MERMAID_HOME


[ -f $MERMAID_HOME/bin/0init ] && source $MERMAID_HOME/bin/0init


