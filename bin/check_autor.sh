grep *.c *.h -e "<marvin@42.fr>" -e "Created:" -e "Updated:" | grep -v $USER
MAIL=$(git config --get user.email)
git log | grep -e "Author:" | grep -v $MAIL
