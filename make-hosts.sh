#!/bin/sh

grep -E '^Subnet ?=.*/32' * |
	awk '{
		split($1, work, ":")
		split($3, cidr, "/")
		print cidr[1], work[1]
	}'
