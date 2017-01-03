#!/bin/bash

# on my dev machine, I run an nginx proxy that does HTTPS termination
# it expects to proxy to port 8000

docker run \
			 -v $(pwd)/default.conf:/etc/apache2/sites-available/000-default.conf \
			 -v $(pwd)/html:/var/www/html \
			 -p 8000:80 \
			 ccnmtl/apache2-cas 
