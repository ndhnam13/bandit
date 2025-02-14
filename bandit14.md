ls #shows shhkey.private
cat sshkey.private  #the output of this file is going to be used 
ssh -i sshkey.private bandit14@localhost -p 2220  #connect using private key
