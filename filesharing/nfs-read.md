# need to map uid and gid for user on the client and server
# rpcbind is a portmaper through TCPwraper(hosts.allow, hosts.deny)
# test configuration exportfs command
# see client connection nfsstat -m command
# nfsv4 use port 2049 TCP only and can use on window clients

<!-- example -->
Deploy an NFS Server
In this lab, we set up an NFS share on a CentOS 6 system and client server. Although NFS 4 is the most common version of NFS used today, since the LPIC tests on NFS 3, that is the version this lab covers. The configuration between NFS 3 and 4 is the same, so any settings learned here can carry over in actual practice.

Install and Configure NFS Server
SSH into the first server.

To begin, we need to install the necessary packages for running NFS:

[linuxacademy@ip] sudo yum install nfs-utils nfs-utils-lib rpcbind
Note that SELinux is not part of the LPIC exams, and is not included on our CentOS 6 servers. If using a non-lab server with SELinux enabled, you will need to alter your permissions or set it to permissive mode while.

With our packages installed, we now need to determine what we want to share. Create the NFS share:

[linuxacademy@ip] sudo mkdir /nfsshare
As with SAMBA, permissions are set through the NFS configuration, so we can set global read, write, and execute permissions for our share:

[linuxacademy@ip] sudo chmod 777 /nfsshare
/etc/exports
To be able to export our file system to different servers, we need to create or update the /etc/exports file. Open the file in your chosen text editor, and add the following:

/nfsshare   (rw)
This states that the /nfsshare export has read and write access for all servers. To secure this down to the single server we have for the client server, SSH into the second server provided, and use the hostname command to retrieve the server's hostname. Update the /etc/exports file on the first server again, ensuring you are using your own hostname.

/nfsshare ip-10-0-1-247(rw) (ro)
This, instead, gives users on the hostname server read and write privileges, while all other users on alternative client servers only have read-only access.

We can also determine whether we want our file system to be synchronous or asynchronous; meaning that it can add new or updated files immediately (synchronous) or flushed to disk periodically (asynchronous). Note that asynchronous can cause file corruption in the event of a reboot before any changes are written to the disk. To set these options add either sync or async to the end of the parenthesis. For example:

/mfsshare ip-10-0-1-247(rw,sync) (ro)
Additionally, we can set our export to "root squash" or "no root squash"; setting this option to root_squash prevents mapping the client root account to the server root account. Since NFS uses user and group IDs to determine permissions -- and these IDs are often not the same between systems -- this prevents the client root from accessing the NFS share as the sever root, despite shared UUIDs. no_root_squash allows for both root users to share the same permissions. This is added to the insides of the parenthesis, same as above:

/nfsshare ip-10-0-1-247(rw,sync,root_squash) (ro)
We can also set network-level permissions:

/nfsshare ip-10-0-1-247(rw,sync,root_squash) 192.168.0.0/24(rw) (ro)
You do not need to update the lab for network-level permissions.

Save and exit the exports file.

Create User ID
We want to create a user ID in which we can use. Check to see if the UID 1101 is in use:

[linuxacademy@ip] cat /etc/passwd | grep 1101
With the UID confirmed unused, we can use it for our nsfuser1:

[linuxacademy@ip] sudo useradd -u 1101 -m nfsuser1
This also sets the nfsuser1 group ID to 1101.

Create nfsuser2:

[linuxacademy@ip] sudo useradd -u 1102 -m nfsuser2
Open your client server and add the same users with the same UIDs:

[linuxacademy@client] sudo useradd -u 1101 -m nfsuser1
[linuxacademy@client] sudo useradd -u 1102 -m nfsuser2
This ensures we won't have any user ID collision issues between the two systems.

Start the Service
Return to the first server and start the nfs and rpcbind services:

[linuxacademy@ip] sudo service nfs start
[linuxacademy@ip] sudo service rpcbind start
[linuxacademy@ip] sudo service nfs restart
grep for rpc on ps aux:

[linuxacademy@ip] ps aux | grep rpc
root       181  0.0  0.0      0     0 ?        S<   17:04   0:00 [rpciod]
rpcuser   2289  0.0  0.1  42348  1720 ?        Ss   18:17   0:00 /usr/sbin/rpc.statd --no-notify
rpc       2291  0.0  0.1  64948  1348 ?        Ss   18:17   0:00 /sbin/rpcbind -w
root      2361  0.0  0.0  21372   420 ?        Ss   18:17   0:00 /usr/sbin/rpc.idmapd
root      2362  0.0  0.0  42692   960 ?        Ss   18:17   0:00 /usr/sbin/rpc.mountd
linuxac+  2384  0.0  0.0 112652   960 pts/0    S+   18:17   0:00 grep --color=auto rpc
Here we can see the various rpc processes running. The rpc.mountd service is for client mount requests (also called mountd), while rpc.idmapd is for hybrid NFS 3 and 4 and 4 systems. rpcbind is simply the primary service. rpcbind feeds portmap, which determines how resources between two servers should communicate and which ports should be used. When trying to access our NFS share from the client connection, rpcbind sends the server to the portmap configuration to determine how to communicate with the host server.

Secure the Server
We can use TCP wrappers to secure who can access the NFS share. This is determined in the /etc/hosts.allow and /etc/hosts.deny files. Currently, both of these files are empty, save for initial comments. Retrieve your internal IP for the client server and open the /etc/hosts.allow file:

# provide portmap access for client IP on NFS
portmap: 10.0.1.247
Note that anything in the hosts.allow file overwrites anything in hosts.deny, so any addresses added can always have access to the defined service.

Now, open /etc/hosts.deny to determine which servers should not have access to our server. In our case, we want to deny any server that is not our client server, so add:

# deny access to the following network other than hosts on it defined in /etc/hosts.allow
portmap: ALL
Note that anything not explicitly defined in this file can have access. An empty /etc/hosts.deny file means that all servers may access the host system.

Restart the services:

[linuxacademy@ip] service rpcbind restart
[linuxacademy@ip] service nfs restart
Test the Configuration:
Run exportfs to see which NFS shares are available:

[linuxacademy@ip] exportfs
/nfsshare       ip-10-0-1-247.ec2.internal
/nfsshare       <world>
Client Configuration
From the client server, install the needed packages:

[linuxacademy@client] sudo yum install nfs-utils nfs-utils-lib rpcbind
These utilities are necessary for mounting the file system.

Navigate to the /mnt directory and create an nfsshare directory:

[linuxacademy@client] cd /mnt
[linuxacademy@client] sudo mkdir nfsshare
Return to the first server, and set passwords for the two users created earlier. Be sure to remember the passwords.

[linuxacademy@ip] sudo passwd nfsuser1
[linuxacademy@ip] sudo passwd nfsuser2
Return to the client server and repeat the process:

[linuxacademy@client] sudo passwd nfsuser1
[linuxacademy@client] sudo passwd nfsuser2
We can now mount the file system. Note that upon initial mount, the system will use the default, global permissions and not the permissions defined in the /etc/exports file.

Retrieve the internal IP of the first server. Mount the file system:

[linuxacademy@client] sudo mount IPADDRESS:/nfsshare /mnt/nfsshare
Confirm:

[linuxacademy@client] df -h
Filesystem           Size  Used Avail Use% Mounted on
/dev/xvda1           8.0G  1.5G  6.6G  19% /
devtmpfs             477M     0  477M   0% /dev
tmpfs                496M     0  496M   0% /dev/shm
tmpfs                496M   13M  483M   3% /run
tmpfs                496M     0  496M   0% /sys/fs/cgroup
tmpfs                100M     0  100M   0% /run/user/0
tmpfs                100M     0  100M   0% /run/user/1001
10.0.1.60:/nfsshare  8.0G  1.5G  6.6G  19% /mnt/nfsshare
Try to add a file to the system:

[linuxacademy@client] cd /mnt/nfsshare
[linuxacademy@client] echo "hello" > hello.txt
Retrieve and copy the IP address of the client. Return to the server and edit the /etc/hosts file with your favorite text editor. Add the IP address of the client:

CLIENT_IP_ADDRESS client
Restart necessary services to ensure everything is picked up:

[linuxacademy@ip] sudo service rpcbind restart
[linuxacademy@ip] sudo service nfs restart
Unmount and remount the file system:

[nfsuser1@client] cd ..
[nfsuser1@client] umount nfsshare
[nfsuser1@client] mount IPADDRESS:/nfsshare /mnt/nfsshare
Confirm:

[nfsuser1@client] df -h
Try to create a file once again.

[nfsuser1@client] cd nfsshare
[nfsuser1@client] echo "hello" > hello.txt
See that the file is mapped to nfsnobody.

[nfsuser1@client] ll
-rw-rw-r--. 1 nfsnobody    nsfnobody    6 Apr  3 18:30 hello.txt
Switch to nfsuser1:

[linuxacademy@client] su nfsuser1
Now create a file:

[nfsuser1@client] cd /mnt/nfsshare
[nfsuser1@client] echo "this is a test" > test.txt
[nfsuser1@client] ll
total 8
-rw-rw-r--. 1 nfsnobody    nsfnobody    6 Apr  3 18:30 hello.txt
-rw-rw-r--. 1 nfsuser1     nfsuser1     15 Apr  3 18:32 test.txt
Here we can see that because the user is properly mapped, it lists nfsuser1 as the owner of the file.

Should we view the files on the initial server the ownership of both files will be the same:

[lonuxacademy@ip] ll
total 8
-rw-rw-r--. 1 nfsnobody    nsfnobody    6 Apr  3 18:30 hello.txt
-rw-rw-r--. 1 nfsuser1     nfsuser1     15 Apr  3 18:32 test.txt
The ownership transfers because the nfsuser1 shares a username and UID between the two systems.

Once more, return to the client server, log out of the nsfuser1 user, and unmount the file system:

[linuxacademy@client] cd ..
[linuxacademy@client] sudo umount nfsshare
We want to add this share to our /etc/fstab so it will mount on reboot. Open the /etc/fstab file in your preferred text editor:

# create an entry to mount our nfs share
IPADDRESS:/nfsshare /mnt/nfsshare   nfs defaults    0 0
Save and exit the file.

Mount the file system, then confirm:

[linuxacademy@client] sudo mount -a
[linuxacademy@client] df -h
Filesystem           Size  Used Avail Use% Mounted on
/dev/xvda1           8.0G  1.5G  6.6G  19% /
devtmpfs             477M     0  477M   0% /dev
tmpfs                496M     0  496M   0% /dev/shm
tmpfs                496M   13M  483M   3% /run
tmpfs                496M     0  496M   0% /sys/fs/cgroup
tmpfs                100M     0  100M   0% /run/user/0
tmpfs                100M     0  100M   0% /run/user/1001
10.0.1.60:/nfsshare  8.0G  1.5G  6.6G  19% /mnt/nfsshare
[linuxacademy@client] cd nfsshare
[linuxacademy@client] ls
hello.txt  test.txt
As we can see, the file system has mounted and our file are available. Unmount the share once more:

[linuxacademy@client] sudo umount nfsshare
Because our share is a remote system, there can be problems as boot if the server it is hosted on is unavailable. Because of this, we want to alter our /etc/fstab to ensure no errors can occur:

IPADDRESS:/nfsshare /mnt/nfsshare   nfs hard,bg,timeo=300,rsize=2048,wsize=4096 0 0
By setting our details to soft (versus hard), once the share fails to connect, the server stops trying to connect to it. A hard mount will continue trying until timeout. We can also set this to run in the foreground (fg), wherein the system will wait until the mount process is done, or background (bg), wherein the system will continue the boot process even as it tries to connect to the mount. The timeout value (timeo=) is set in tenths of a second until the mount fails. rsize and wsize determines the read and write size requests allows on the remote server. We can also set read-write (rw) or read-only (ro).

Mount the file system again:

[linuxacademy@client] sudo mount -a
[linuxacademy@client] df -h
Filesystem           Size  Used Avail Use% Mounted on
/dev/xvda1           8.0G  1.5G  6.6G  19% /
devtmpfs             477M     0  477M   0% /dev
tmpfs                496M     0  496M   0% /dev/shm
tmpfs                496M   13M  483M   3% /run
tmpfs                496M     0  496M   0% /sys/fs/cgroup
tmpfs                100M     0  100M   0% /run/user/0
tmpfs                100M     0  100M   0% /run/user/1001
10.0.1.60:/nfsshare  8.0G  1.5G  6.6G  19% /mnt/nfsshare