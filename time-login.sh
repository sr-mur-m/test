#!/bin/bash

TIME=`last username | awk '{ print $6 }'`
DAY=`last username | awk '{ print $5 }'`
MONTH=`last username | awk '{ print $4 }'`
YEAR=`last username | awk '{ print $7 }'`
DATE="$TIME$DAY$MONTH$YEAR"
USER=`whoami`

echo -n "$USER session began at "
echo $DATE
exit 0