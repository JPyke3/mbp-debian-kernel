KERNEL_VERSION=5.6

echo >&2 "==> Download Dependancies..."
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y -qq -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
	linux-source-${KERNEL_VERSION} \
	build-essential \
	fakeroot \
	tar

echo >&2 "==> Extracting Kernel Source"
tar xaf /usr/src/linux-source-${KERNEL_VERSION}.tar.xz

echo >&2 "==> Apply Patches"
cd ./linux-source-${KERNEL_VERSION}
for i in ../patches/*.patch; do patch -p1 < $i
done

echo >&2 "==> Generate Config File"
make defconfig

echo >&2 "==> Compile Kernel"
make clean
make deb-pkg
