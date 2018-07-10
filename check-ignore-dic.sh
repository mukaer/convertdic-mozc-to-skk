#!/bin/sh
#-*- coding:utf-8 -*-


awk '
{
    outputflg = 0

    if($1 ~ /^([0-9a-zあ-んゔ])/)
        outputflg = 0
    else
        outputflg = 1

    if($1 ~ /[A-Z]/) outputflg = 1


    if(outputflg == 1 ) printf("%s /%s/\n",$1,$5)
}


' mozc-dictionary-oss/*
