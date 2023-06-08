#!/bin/bash

comp() {
	src=${1}
	gen=${2}
	exp=${3}
	if [[ "${gen}" == "${exp}" ]]; then
		printf "check %-20s\tOK\t%-20s\t%-20s\n" "${src}" "${gen}" "${exp}"
		#echo "OK	$src	$gen	$exp"
	else
		printf "check %-20s\tFAIL\t%-20s\t%-20s\n" "${src}" "${gen}" "${exp}"
		#echo "FAIL	$src 	$gen	$exp"
	fi
}

test_file=$1
cat $test_file | while read class hex insn; do
	gen_insn=$(echo "$hex" | awk -f rv.awk | grep RESP: | cut -d' ' -f2-)
	comp "${hex}" "${gen_insn}" "${insn}"
	#if [[ "gen_insn" == "$insn" ]]; then echo "OK"; else echo "FAIL [$gen_insn] VS [$insn]"; fi
done 
cat $test_file | while read class hex insn; do
	gen_hex=$(echo "$insn" | awk -f rv.awk | grep "hex " | cut -d' ' -f2)
	comp "${insn}" "${gen_hex}" "${hex}"
	#if [[ "$gen_hex" == "$hex" ]]; then echo "OK $gen_hex VS $hex"; else echo "FAIL $gen_hex VS $hex"; fi
done 
