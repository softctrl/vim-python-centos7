#! /usr/bin/bash

# We need the development tools:
sudo yum groupinstall "Development Tools" -y && \
sudo yum install cmake -y && \

# Just to configure the new Version of vim (8) then we can use all plugins:
sudo curl -L https://copr.fedorainfracloud.org/coprs/mcepl/vim8/repo/epel-7/mcepl-vim8-epel-7.repo -o /etc/yum.repos.d/mcepl-vim8-epel-7.repo && \
sudo yum update vim* -y && \

# Now we can start the configuration project:
git clone https://github.com/j1z0/vim-config.git && cd vim-config && \
chmod +x setup_vim.sh && ./setup_vim.sh && \
cd ~/.vim/bundle/YouCompleteMe
./install.py
