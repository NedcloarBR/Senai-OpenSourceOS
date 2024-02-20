#!/bin/sh

arquivos=$(mkdir teste && cd teste && echo "teste" >exemplo.txt && ls)

echo $arquivos
