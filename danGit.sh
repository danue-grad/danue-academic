#!/bin/bash
{ #Try
git add * &&
(git commit -m $1 || (git rm --cached * && false )) && 
(git push || (git reset HEAD~ && false ))
} || { #Catch
  echo "Something went wrong!"
}