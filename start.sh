#!/bin/bash
service ssh restart
/bin/bash /opt/scm-server/bin/scm-server >> /var/log/scm.log & /bin/bash