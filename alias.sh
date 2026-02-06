#!/bin/bash

echo Enter your future custom command name:
read ALIAS
echo Enter what to do your custom command:
read COMMAND
ALIAS_COMMAND="alias $ALIAS='$COMMAND'"
echo $SHELL
if [[ "$SHELL" = "/usr/bin/zsh" ]];
then
    echo "$ALIAS_COMMAND" >> ~/.zshrc
    source ~/.zshrc
else
    echo "$ALIAS_COMMAND" >> ~/.bashrc
    source ~/.bashrc
fi
echo Command $ALIAS_COMMAND is succefuly created!
echo Reload ur terminal and enjoy :D
exit 0

