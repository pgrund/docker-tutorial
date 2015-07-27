#!/bin/bash
/usr/local/bin/wrapdocker
echo "docker started, run shellinabox ..."
/usr/bin/shellinaboxd -p 4200 -t
