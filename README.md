# Outline
## How to SSH to server?
```
ssh sysadm@<server-ip>
```
## Start setting vpn
```
$ sudo su -
$ chmod +x setup.h
$ ./setup.sh
```
Once Paste the cryptic text from your local SSH public key: appears on screen, copy and paste public SSH key to it (for example, in my case: cat  ~/.ssh/sysadm_ed25519.pub) and Ctrl+D to move forward.
```
$ ./outline.sh
$ ./gen_key.sh
```
