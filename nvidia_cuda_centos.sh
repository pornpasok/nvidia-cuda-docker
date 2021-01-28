# Install Docker

sudo yum install -y pciutils wget epel-release dkms 
sudo yum install -y python3
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce docker-ce-cli containerd.io

sudo systemctl start docker

# Install NVIDIA Driver CUDA 10

wget http://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda-repo-rhel7-10-2-local-10.2.89-440.33.01-1.0-1.x86_64.rpm
sudo rpm -i cuda-repo-rhel7-10-2-local-10.2.89-440.33.01-1.0-1.x86_64.rpm

sudo yum clean all
sudo yum -y install nvidia-driver-latest-dkms cuda
sudo yum -y install nvidia-driver-cuda
sudo yum -y install cuda-drivers

# setup your paths
echo 'export PATH=/usr/local/cuda/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc
sudo ldconfig

# Install NVIDIA Container Toolkit

distribution=$(. /etc/os-release;echo $ID$VERSION_ID)

curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.repo | sudo tee /etc/yum.repos.d/nvidia-docker.repo

sudo yum install -y nvidia-container-toolkit

sudo systemctl restart docker

# Run Docker & Test nvidia-smi
docker run --gpus all nvidia/cuda:10.0-base nvidia-smi
