#!/usr/bin/python3
import os
path = '/tmp/testfile.txt'

if os.path.isdir(path):
    print("It is a directory")
elif os.path.isfile(path):
    print("This is file")
else:
    print("File/Dir does not exists")
