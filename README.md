## dotfiles

### install app

- sudo pacman -S fish
- sudo pacman -S tmux
- sudo pacman -S neovim
- sudo pacman -S ranger
- sudo pacman -S tree
- sudo pacman -S chromium
- sudo pacman -S ctags
- sudo pacman -S nodejs
- sudo pacman -S yarn
- sudo pacman -S gcc
- sudo pacman -S checkcpp
- sudo pacman -S wps-office
- sudo pacman -S clang make cmake gdb    # 编译调试环境
- sudo pacman -S netease-cloud-music     # 网易云音乐

- 安装搜狗输入法
    - 


### fish 配置
- fish_config
- chsh -s /usr/bin/fish  :将fish设置为默认shell

### neovim
- sudo ln -sf /usr/bin/nvim /usr/bin/vi

### ecp->caps
dconf-editor -> org -> gnome -> desktop -> input-sources -> xkb-options  
['caps:swapescape']  
reboot

