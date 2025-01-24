#"makes a connection to localhost on the port you specify as a commandline argument" this means we have to run a cmd that create a server on local host, we can do that using nc
echo -n 'previous bandit lv pw' | nc -l -p 1234 &
# echo to print out the line, -n to prevent new line char when we press enter
# -l means the port is in listening state and "&" so it will run in the background
./suconnect 1234
# if we head suconnect we can see that it will connect to a tcp port and if the pw is correct, it will foward the new pw for the next lv into /home/etc/bandit_pass/bandit21 
