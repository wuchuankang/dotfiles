## dotfiles

### install app

- sudo pacman -S fish
- sudo pacman -S tmux
- sudo pacman -S vim
- sudo pacman -S neovim
- sudo pip install neovim #youcompleteme 需要neovim的python的支持
- sudo pacman -S ranger
- sudo pacman -S tree
- sudo pacman -S chromium
- sudo pacman -S ctags
- sudo pacman -S nodejs
- sudo pacman -S yarn
- sudo pacman -S make
- sudo pacman -S cmake
- sudo pacman -S clang
- sudo pacman -S gcc
- sudo pacman -S checkcpp
- sudo pacman -S wps-office
- sudo pacman -S clang make cmake gdb    # 编译调试环境
- sudo pacman -S netease-cloud-music     # 网易云音乐

- 安装搜狗输入法
    - 

- 安装ycm
    - 通过插件安装后，要进入 cd .vim/plugged/youcompleteme/ 
    - ./install.py --clang-complete 才能补全C++
    - 要补全头文件，参见init.vim中ycm配置

### fish 配置
- fish_config
- chsh -s /usr/bin/fish  :将fish设置为默认shell

### neovim
- sudo ln -sf /usr/bin/nvim /usr/bin/vi

### 将ecp->caps
dconf-editor -> org -> gnome -> desktop -> input-sources -> xkb-options  
['caps:swapescape']  
reboot

### 安装顺序

先安装上面的软件，然后再进行下面的配置，因为下面的配置有的要依赖上面的app
