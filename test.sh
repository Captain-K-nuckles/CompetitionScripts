#!/bin/bash

if
    type -P useradd  &>/dev/null && echo "Useradd Found" || echo "Useradd Not Found, switching to adduser";
    then echo "useradd fun";
    else echo "adduser here";
fi
