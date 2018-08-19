#!/bin/bash

lvresize --extents +100%FREE --resizefs /dev/mapper/pve-data 
