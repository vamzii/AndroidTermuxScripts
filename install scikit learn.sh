echo"installing python"
pkg install python
echo "updating apt"
apt update -y
apt list --upgradable
echo "upgrading apt"
apt upgrade -y
echo "downloading setup-pointless-repo.sh"
curl -LO https://its-pointless.github.io/setup-pointless-repo.sh
echo "setting up setup-pointless-repo.sh"
bash setup-pointless-repo.sh
echo "installing required dependencies"
apt install -y clang python fftw libzmq freetype libpng pkg-config libcrypt gcc-9 numpy scipy
echo "setting up gcc-9"
setupgcc-9
echo "setting up patch for gcc"
setup-patchforgcc
echo "installing joblib and scikit-learn"
pip install joblib==0.11
pip install --upgrade pip
DFLAGS=" -lm -lcompiler_rt" pip install -U scikit-learn
