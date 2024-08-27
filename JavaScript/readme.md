# JavaScript

## Libraries or stack used
*  Node Js
*  Express Js
*  MYSQL2


## Getting started 
### prerequisite
Please check the main [readme](../readme.md) to get the MYSQL database 
1) Fork this repo
2) cd into JavaScript directory
  ``` script
 cd ./JavaScript
```

3) Run script to install all dependencies
``` script
npm install 
```

4) Create a .env file in the current directory and paste all the requirements present in the .env.sample file.
 ``` script
USER = localhost,
DATABASE = Name Of DataBase
USER = User Name (Commonly root)
PASSWORD = Enter Password
PORT = Port Number by default set to 4000
```  
5) Run this script to start the server
``` script
npm run dev
```
6) Make a GET request to check if all works fine.
 ``` script
  http://localhost:4000/movie/all
```
Now you're good to go