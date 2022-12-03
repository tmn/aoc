#!/bin/bash

[ -d out ] || mkdir out

echo "Day 1"
swiftc -o out/day01 src/day01.swift && ./out/day01
echo ""
echo "Day 2"
swiftc -o out/day02 src/day02.swift && ./out/day02
