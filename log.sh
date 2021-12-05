#!/bin/bash
log_file="Apache_2.4-PHP_5.5-5.6_queriesa.log" 
echo "Checking HTTP 404 error in log file"
grep "404" $log_file
echo "Find HTTP 404 errors:" `grep -c "404" $log_file`
