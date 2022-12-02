#!/bin/bash

[ -d out ] || mkdir out

swiftc -o out/day01 src/day01.swift && ./out/day01
