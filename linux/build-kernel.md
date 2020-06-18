Download and Build the Kernel Source Tree with rpm
Install required packages. To perform this command, we must be the root user. Use the sudo -i command to switch to root.

yum install asciidoc audit-libs-devel bash bc binutils binutils-devel bison diffutils elfutils -y && yum install elfutils-devel elfutils-libelf-devel findutils flex gawk gcc gettext gzip hmaccalc hostname java-devel -y && yum install m4 make module-init-tools ncurses-devel net-tools newt-devel numactl-devel openssl -y && yum install patch pciutils-devel perl perl-ExtUtils-Embed pesign python-devel python-docutils redhat-rpm-config -y && yum install rpm-build sh-utils tar xmlto xz zlib-devel -y
Install and run the random number generator.

yum install rng-tools
rngd -r /dev/urandom
Switch back to cloud_user by typing exit.

Install the rpm package. First create the build directory.

cd ~
mkdir -p ~/rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}
echo '%_topdir %(echo $HOME)/rpmbuild' >~/.rpmmacros
rpm -i http://vault.centos.org/7.7.1908/updates/Source/SPackages/kernel-3.10.0-1062.12.1.el7.src.rpm 2>&1 | grep -v exist
Build the rpm package.

cd ~/rpmbuild/SPECS
rpmbuild -bp --target=$(uname -m) kernel.spec