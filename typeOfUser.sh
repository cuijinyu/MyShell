#!/bin/bash
case $UID in
0) echo this is root;;
[0-9][0-9]) echo this is system;;
[1-4][0-9][0-9]) echo this is service;;
*) echo this is public;;
esac