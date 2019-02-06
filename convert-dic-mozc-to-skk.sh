#!/usr/bin/env bash

#-*- coding:utf-8 -*-

awk '

{

    outputflg = 0

    if($1 ~ /^([0-9a-zあ-んゔ])/ ) outputflg = 1

    if($1 ~ /[A-Z]/) outputflg = 0

    if(outputflg == 1) {
        gsub(/ゔ/,     "う゛",  $1)
        gsub(/\//,     "／" ,  $5)
        gsub(/;/,      "；" ,  $5)

        printf("%s /%s/\n", $1, $5)
    }

}' $1
