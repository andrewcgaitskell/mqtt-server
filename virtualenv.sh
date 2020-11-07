python3 -m venv env

source /home/andrew_gaitskell/env/bin/activate

pip install wheel
pip install uwsgi
pip install Flask

hello world app
===============

from flask import Flask
app = Flask(__name__)
@app.route('/')
def hello_world():
    return 'Hello, World!'


uwsgi
======

uwsgi -s /tmp/yourapplication.sock --manage-script-name --mount /yourapplication=myapp:app

--virtualenv /path/to/virtual/environment.

uwsgi -s /tmp/yourapplication.sock --manage-script-name --mount /yourapplication=hello:app --virtualenv /home/andrew_gaitskell/env

output
======

** Starting uWSGI 2.0.19.1 (64bit) on [Sat Nov  7 10:08:33 2020] ***
compiled with version: 7.5.0 on 07 November 2020 09:49:28
os: Linux-5.4.0-1028-gcp #29~18.04.1-Ubuntu SMP Mon Oct 5 16:41:43 UTC 2020
nodename: acg34rg-mqtt-vm1
machine: x86_64
clock source: unix
detected number of CPU cores: 2
current working directory: /home/andrew_gaitskell
detected binary path: /home/andrew_gaitskell/env/bin/uwsgi
!!! no internal routing support, rebuild with pcre support !!!
uWSGI running as root, you can use --uid/--gid/--chroot options
*** WARNING: you are running uWSGI as root !!! (use the --uid flag) *** 
*** WARNING: you are running uWSGI without its master process manager ***
your processes number limit is 3750
your memory page size is 4096 bytes
detected max file descriptor number: 1024
lock engine: pthread robust mutexes
thunder lock: disabled (you can enable it with --thunder-lock)
uwsgi socket 0 bound to UNIX address /tmp/yourapplication.sock fd 3
uWSGI running as root, you can use --uid/--gid/--chroot options
*** WARNING: you are running uWSGI as root !!! (use the --uid flag) *** 
Python version: 3.6.9 (default, Oct  8 2020, 12:12:24)  [GCC 8.4.0]
PEP 405 virtualenv detected: /home/andrew_gaitskell/env
Set PythonHome to /home/andrew_gaitskell/env
*** Python threads support is disabled. You can enable it with --enable-threads ***
Python main interpreter initialized at 0x563248d864f0
uWSGI running as root, you can use --uid/--gid/--chroot options
*** WARNING: you are running uWSGI as root !!! (use the --uid flag) *** 
your server socket listen backlog is limited to 100 connections
your mercy for graceful operations on workers is 60 seconds
mapped 72904 bytes (71 KB) for 1 cores
*** Operational MODE: single process ***
mounting hello:app on /yourapplication
WSGI app 0 (mountpoint='/yourapplication') ready in 0 seconds on interpreter 0x563248d864f0 pid: 9667 (default app)
uWSGI running as root, you can use --uid/--gid/--chroot options
*** WARNING: you are running uWSGI as root !!! (use the --uid flag) *** 
*** uWSGI is running in multiple interpreter mode ***
spawned uWSGI worker 1 (and the only) (pid: 9667, cores: 1)


You might also need to add --plugin python or --plugin python3 depending on which python version you use for your project.
