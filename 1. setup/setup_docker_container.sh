docker run -ti -h pyalgo -p 11111:11111 ubuntu:latest /bin/bash
apt-get update; apt-get upgrade -y
apt-get install -y gcc wget
wget \
https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
-O miniconda.sh
export PATH="/root/miniconda3/bin/:$PATH"
conda update -y conda
echo ". /root/miniconda3/etc/profile.d/conda.sh" >> ~/.bashrc
conda install -y ipython matplotlib pandas pytables scikit-learn scipy