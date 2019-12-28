## dotfiles
这个是本人在manjaro上的配置

### install app
```vim
sudo pacman -S yay  #是另外一种manjaro安装软件的方式
sudo pacman -S htop
sudo pacman -S axel  #多线程下载 比wget好用多了
sudo pacman -S flameshot  # 截图软件
sudo pacman -S fish
sudo pacman -S tmux
sudo pacman -S vim
sudo pacman -S neovim
sudo pip install neovim #youcompleteme 需要neovim的python的支持
sudo pacman -S ranger
sudo pacman -S tree
sudo pacman -S chromium
sudo pacman -S ctags
sudo pacman -S nodejs
sudo pacman -S yarn
sudo pacman -S make
sudo pacman -S cmake
sudo pacman -S clang
sudo pacman -S gcc
sudo pacman -S checkcpp
sudo pacman -S wps-office
sudo pacman -S smplayer #视频播放器
sudo pacman -S clang make cmake gdb    # 编译调试环境
sudo pacman -S netease-cloud-music     # 网易云音乐
sudo pacman -S the_silver_searcher     # 依据文件内容查找工具，与 fzf 配合使用 


安装cgdb所需依赖：
   sudo pacman -S sh
   sudo pacman -S autoconf
   sudo pacman -S automake
   sudo pacman -S libtool
   sudo pacman -S flex
   sudo pacman -S bison
```

###  install ycm

- 通过插件安装后，要进入 cd .vim/plugged/youcompleteme/ 
- ./install.py --clang-complete 才能补全C++
- 要补全头文件，参见init.vim中ycm配置


### fish 配置

- fish_config
- chsh -s /usr/bin/fish  :将fish设置为默认shell

### neovim

- sudo ln -sf /usr/bin/nvim /usr/bin/vi

### ecp 映射为 caps
dconf-editor -> org -> gnome -> desktop -> input-sources -> xkb-options  
['caps:swapescape']  
reboot  

### 安装顺序

先安装上面的软件，然后再进行下面的配置，因为下面的配置有的要依赖上面的app

### 系统快捷键设置

1. 系统设置->键盘->自定义快捷键： name：max terminal ，command: gnome-terminal --maximize   快捷方式：crtl+alt+t
2. chromium, command:chromium   快捷方式：crtl+alt+c

### 更改terminal文件颜色

在 ./.dir_colors 中配置

### git 注意点

1. git clone XXX --depth=1    # 参数用于指定clone深度，1表示只clone最近一次的commit
2. 在clone本配置的时候，最好使用该参数，因为提交历史过多，内容会大一些，不利于下载
