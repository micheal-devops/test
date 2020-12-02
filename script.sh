#!/bin/bash

if test -z $1 ; then
    echo "this condition not used for now"

else
    echo "The arg is not empty: $1"
    if [[ `wget -S --spider $1  2>&1 | grep 'HTTP/1.1 200 OK'` ]]; then
    	  echo "true";
    	else
    		echo "datafile URL not found , Please check the URL" ;
    		exit 1 ;

    fi

fi
