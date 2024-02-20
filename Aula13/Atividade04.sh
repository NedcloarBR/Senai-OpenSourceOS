#!/bin/bash

linhas_no_arquivo() {
  cat $1 | wc -l
}

num_lines=$(linhas_no_arquivo $1)

echo O arquivo $1 tem $num_lines linhas nele
