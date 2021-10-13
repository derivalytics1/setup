### DS Env Instructions - Mac

Run the following commands on a fresh install of Ubuntu 18.04 LTS

Created: Mar. 15, 2019


```bash
cd $HOME

# Clone DS Setup Repo
git clone https://github.com/derivalytics1/setup.git

# Initial Update
sudo apt-get -y update
sudo apt-get -y upgrade

# Install Conda
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

source .bashrc

conda update -n base conda
conda update --all
conda config --add channels conda-forge

# Link dotfiles
#cp -b ds_setup/dotfiles/.bashrc .
cp -b ./ds_setup/dotfiles/.screenrc .

mv .emacs.d .emacs.d~
cp -r ./ds_setup/dotfiles/.emacs.d .

# Create Standard DS Environment
conda create --name ds_env --file ./ds_setup/requirements.txt

# Additional packages to support profiles
conda install boto

# Reference Commands
# Add Conda to PATH
#echo "export PATH=$HOME/miniconda3/bin:$PATH" >> .bashrc
#source .bashrc

# Install Emacs Globally using Conda
#conda install -c conda-forge emacs


```


### DS Env Instructions - Windows

Run the following commands on a fresh install of Ubuntu 18.04 LTS

Created: June. 14, 2021


```bash
cd $HOME

# Clone DS Setup Repo
git clone https://github.com/darwill/ds_setup.git

# Install Conda
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
Miniconda3-latest-Linux-x86_64.sh

conda update -n base conda
conda update --all
conda config --add channels conda-forge

# Link dotfiles
#cp -b ds_setup/dotfiles/.bashrc .
cp -b ./ds_setup/dotfiles/.screenrc .

mv .emacs.d .emacs.d~
cp -r ./ds_setup/dotfiles/.emacs.d .

# Create Standard DS Environment
conda create --name ds_env --file ./ds_setup/requirements.txt


# Reference Commands
# Add Conda to PATH
#echo "export PATH=$HOME/miniconda3/bin:$PATH" >> .bashrc
#source .bashrc

# Install Emacs Globally using Conda
#conda install -c conda-forge emacs
```
