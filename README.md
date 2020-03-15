## dotfiles
这个是本人在`manjaro`上的配置

### install app
```bash
sudo pacman -S yay  #是另外一种manjaro安装软件的方式
sudo pacman -S htop
sudo pacman -S axel  #多线程下载 比wget好用多了
sudo pacman -S flameshot  # 截图软件
<!--sudo pacman -S fish--> // 不使用fish，改换为zsh
sudo pacman -S zsh
sudo pacman -S lazygit      //可视化的git管理
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

- 通过插件安装后，要进入 `cd .vim/plugged/YouCompleteMe/`
- `./install.py --clang-complete` 才能补全`C++`，这个在 `zsh` 下不识别，可以切换到 `bash` 运行
- 要补全头文件，参见`init.vim`中`ycm`配置，具体上 `.ycm_extra_conf.py`

### install coc
- 用来补全 `Python、markdown`；
- 想要补全 `Python`， 要先安装 `jedi`
```cpp
sudo pip install jedi
```

### zsh 配置

- `chsh -s /usr/bin/zsh` ：将`fish`设置为默认`shell`
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`   (安装`oh-my-zsh`，这个是`zsh`的配置文件)
- `curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh`
(上面是管理终端的插件)

### neovim

- 将 `nvim`链接为 `vi`： `sudo ln -sf /usr/bin/nvim /usr/bin/vi`

### ecp 映射为 caps
```cpp	
dconf-editor -> org -> gnome -> desktop -> input-sources -> xkb-options    
['caps:swapescape']  
reboot
```
### 安装顺序

先安装上面的软件，然后再进行下面的配置，因为下面的配置有的要依赖上面的`app`

### 系统快捷键设置

1. 系统设置->键盘->自定义快捷键： `name：max terminal ，command: gnome-terminal --maximize` 快捷方式：`crtl+alt+t`
2. `chromium, command:chromium`  快捷方式：`crtl+alt+c`

### 更改terminal文件颜色

在 `./.dir_colors` 中配置

### git 注意点

1. `git clone XXX --depth=1`，参数用于指定`clone` 深度，`1`表示只`clone`最近一次的`commit`;
2. 在 `clone` 本配置的时候，最好使用该参数，因为提交历史过多，内容会大一些，不利于下载;
3. 若果通过 `github` 下载速度过慢，可以通过 `码云` 作桥梁进行下载，因为`码云`是国内的，所以速度快，具体操作如下：
    - 复制 `github` 上的仓库地址，登录到 `码云`，在 `我的码云` 左上角的 `+` 中，选择从 `github` 导入仓库；
    - 导入仓库后，复制 `码云` 上该仓库的地址，然后通过 `git clone 地址` 的方式，就可以将仓库从 `码云` 上迅速下载，
    - 修改仓库内容后，如果使用 `git push`，将上传到 `码云`上，如果想重新上传到 `github` 上，修改仓库中 `.git/config` 文件，通过 `vim .git/config`,将 `url` 一栏改成 `github` 上该对应仓库的地址就可以了。  
