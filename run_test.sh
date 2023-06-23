#!/bin/bash

comp() {
	src=${1}
	gen=${2}
	exp=${3}
	if [[ "${gen}" == "${exp}" ]]; then
		printf "check %-20s\tOK\t%-20s\t%-20s\n" "${src}" "${gen}" "${exp}"
	else
		printf "check %-20s\tFAIL\t%-20s\t%-20s\n" "${src}" "${gen}" "${exp}"
	fi
}

test_file=$1
cat $test_file | while read class isa hex insn; do
	isa=${isa:-"RV32I"}
	if [[ "$insn" != "" ]]; then
		gen_insn=$(echo "$hex" | awk -f rv.awk -v config_isa=$isa -v class=$class | grep RESP: | cut -d' ' -f2-)
		comp "${hex}" "${gen_insn}" "${insn}"
	fi
done 
cat $test_file | while read class isa hex insn ; do
	isa=${isa:-"RV32I"}
	if [[ "$insn" != "" ]]; then
		gen_hex=$(echo "$insn" | awk -f rv.awk -v config_isa=$isa -v class=$class | grep "hex " | cut -d' ' -f2)
		comp "${insn}" "${gen_hex}" "${hex}"
	fi
done 
