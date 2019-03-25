# zcashwallet-docker-vnc

This is an docker for Zcash Wallet inside an docker with xfce gui, I made this with the objective of dont have 20 or 30 gigs in my pc by an wallet so i put it on my server.

This image is based on 
https://hub.docker.com/r/consol/ubuntu-xfce-vnc/

## Required 
To use this docker image you need to have docker installed.

## To install 

This will download the image to your pc

```
docker pull ulisses1478/zcashwallet
```

## To Run

This will make the container start with vnc only

```
docker run -d -p 5901:5901 ulisses1478/zcashwallet 
```
or

If you want the NoVnc

```
docker run -d -p 6901:6901 ulisses1478/zcashwallet
```
or BOTH

```
docker run -d -p 5901:5901 -p 6901:6901 ulisses1478/zcashwallet
```

If you want to put the files of the zcashwallet outside the container 
```
docker run -d -p 5901:5901 ulisses1478/zcashwallet
```
## RUNNING ZCASH 
To run zcash you need to open the terminal inside the vnc and run 
```
zcashd --daemon
```
After that just open the Zcashwallet on the desktop and will start to sync with blockchain

## Costumize the background image 

For this you will need to build your own image first you download or fork this repo and change the image with the name bh_sakuli.png and replace with the same name.

Directory for the image

```
src/common/xfce/.config/bg_sakuli.png

```
## To Build
You run this command and replace the <user>, <repo>, <tag> for one that you want.
THE COMAND NEEDED TO BE RUN WHERE DOCKERFILE IS
```
docker build -t <user>/<repo>:<tag> .
```

