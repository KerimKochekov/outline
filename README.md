# Outline
## How to SSH to server?
```
ssh sysadm@<server-ip>
```
## Start setting vpn
```
$ sudo su -
```
Clone the repo from github. For that first install git and clone it.
```
apt install git
git clone https://github.com/KerimKochekov/outline
```
Move to repo directory.
```
$ cd outline
$ chmod +x setup.h
$ ./setup.sh
```
Once **"Paste the cryptic text from your local SSH public key:"** appears on screen, copy and paste public SSH key to it and Ctrl+D to move forward:
```
$ cat  ~/.ssh/sysadm_ed25519.pub
```
Moreover, if you see the setup.sh stuck on command **"Running setup.py bdist_wheel for pynacl"**, you can skip it with Ctrl+C to move forward (It usually takes 20-30 minutes based on performance of your machine, but from my experience, I did not see it is needed for our vpn server, so you can freely skip it)
```
$ ./outline.sh
$ ./gen_key.sh
```
If you see **"Enter passcode and server IPv4:"** on screen, type your secret key (it is given below, you can change it freely based on your preference in config.yml) and server ip with space. For instance:
```
password1! 192.168.0.1
``` 
## Outline VPN user info
    id: user1
    secret: password1!
