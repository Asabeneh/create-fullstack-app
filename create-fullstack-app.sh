#! /bin/bash

name=$1
$(cd playgrounds)
$(mkdir $name)
path="$(pwd)/$name"
echo $path
$(cd $path && mkdir client server)
$(cd "$path/client" && npx create-react-app . && npm install axios redux react-redux redux-thunk react-router-dom formik yup bootstrap moment react-moment styled-components react-helmet classnames jwt-decode react-social-icons react-confetti recharts)
$(cd "$path/server" && mkdir config middleware controllers models routes utils validation && npm init -y && touch server.js)
$(cd "$path/server" && npm install axios bcryptjs moment express mongoose mysql dotenv jsonwebtoken gravatar cors)
green="\033[0;32m"
clear="\033[0m"

echo "${green}
==============================================================
============    ^_^   CONGRATULATIONS!   ^_^    ==============
========   Your fullstack app has been created     ===========
=== Navigate to the different folders in the fullstack app ===
==============================================================
${clear}
"