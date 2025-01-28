#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$((NUMBER1+NUMBER2))

echo "Total :: $SUM"

echo "How many arugs are passed:: $@"
echo "All args are passed :: $#'
echo "Script name :: $0"