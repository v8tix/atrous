FROM v8tix/cronov:0.0.4.v20200324.0efd158
LABEL MAINTAINER="V8TIX"
LABEL MAIL="info@v8tix.com"
RUN ["/bin/bash", "-c", "mkdir /home/v8tix/.ssh"]
ADD packages /home/v8tix/packages
RUN ["/bin/bash", "-c", "chmod +x -R /home/v8tix/packages"]
RUN ["/bin/bash", "-c", "/home/v8tix/packages/packages.sh"]
RUN ["/bin/bash", "-c", "/home/v8tix/libraries/zemni/system/setup/ssh/ssh.sh"]
RUN ["/bin/bash", "-c", "chmod 777 /home/v8tix/.ssh"]
RUN ["/bin/bash", "-c", "rm -rf /home/v8tix/packages"]
RUN ["/bin/bash", "-c", "/home/v8tix/libraries/zemni/system/sec/remove_all_perm.sh"]
RUN ["/bin/bash", "-c", "/home/v8tix/libraries/zemni/system/cleanup/cleanup.sh"]
USER v8tix:v8tix
ADD --chown=v8tix:v8tix hosts/known_hosts /home/v8tix/.ssh/
ADD --chown=v8tix:v8tix entrypoint /home/v8tix/entrypoint/
ENTRYPOINT ["/home/v8tix/entrypoint/entrypoint.sh"]