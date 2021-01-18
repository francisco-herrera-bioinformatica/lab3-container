#!/bin/bash

#SBATCH -p hpc-bio-pacioli             			# cola destino
#SBATCH --chdir=/home/alumno06/			 	# directorio de trabajo
#SBATCH -J LAB3  		                	# nombre del trabajo
#SBATCH --cpus-per-task=26			

# Ejecutar k-mer13.cpp y k-mer14.cpp
echo "Ejecutando k-mer13.cpp\n"
time ./k-mer13
echo "\nEjecutando k-mer14.cpp\n"
time ./k-mer14

# Ejecutar k-mer13.py y k-mer14.py
echo "Ejecutando k-mer13.py\n"
time python3 ./k-mer13.py
echo "Ejecutando k-mer14.py\n"
time python3 ./k-mer14.py

