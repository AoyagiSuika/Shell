# @Author: Dahak Déborah <dahak_d>
# @Date:   21-08-2019
# @Email:  deborah.dahak@gmail.com
# @Project: Basics
# @Filename: create_repo.sh
# @Last modified by:   suika
# @Last modified time: 21-08-2019



#!/bin/sh
# Ce script crée un repo Git et le lie à un repo GitHub

git init;
echo "Veuillez entrer le nom du repo GitHub : ";
read repo;
echo "Veuillez entrer votre mot de passe GitHub : ";
curl -u 'AoyagiSuika' https://api.github.com/user/repos -d' {"name":"$repo"} ';
git remote add origin git@github.com:AoyagiSuika/$repo.git;
echo "Le repo $repo a bien été créé.";
