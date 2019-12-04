### lininux 系统快捷键设置

1. 在setting->device->keyboard  : 最后一行，添加启动快捷键，方式是：commond 中添加的是系统识别的命令，比如在terminal中打chromium ，便可以打开Google，就在命令中添加chromium，下面设置快捷键即可。
对于设置大尅terminal的快捷键，系统识别的命令是：gnome-terminal，设置快捷键即可

2. ctrl + w: 关闭当前的tab (chromium)

3. alt + 空格键 ： 调处菜单栏，这个可以用来关闭程序

4. Ctrl + t : 打开新的tab

5. ctrl + q :可以关闭大多程序

6. ctrl + alt + pgup : 上翻工作区  
   ctrl  + alt + t  
   ctrl + alt +g

### ranger 使用
1. ：open_with vi  使用vi 打开文件


### vim 中关于标点符号内部的操作

以下命令可以对标点内的内容进行操作。
- ci'、ci"、ci(、ci[、ci{、ci< - 分别更改这些配对标点符号中的文本内容
- di'、di"、di(或dib、di[、di{或diB、di< - 分别删除这些配对标点符号中的文本内容
- yi'、yi"、yi(、yi[、yi{、yi< - 分别复制这些配对标点符号中的文本内容
- vi'、vi"、vi(、vi[、vi{、vi< - 分别选中这些配对标点符号中的文本内容
- 另外如果把上面的i改成a可以连配对标点一起操作。
- 因为自己的vim 配置文件，将 h 映射为了i，所以上面的i 替换为h就可以操作了。


### chromium vim插件的使用
1. 当遇到窗口不可用vim的时候，就跳转不过去，这个时候可以采用： alt+数  字  ,来进行tab切换  
    alt + 1: 就是切换为第一个窗口
2. ctrl + w: 关闭当前的tab
3. alt + 空格键 ： 调处菜单栏，这个可以用来关闭程序
4. Ctrl + t : 打开新的tab
5. ctrl + q :可以关闭大多程序


### vim 中多行编辑插件 vim_multi_cursor
1. 更改变量名    
    ctrl + n 进行选择，用它还可以选择下一个  
    Ctrl + x 跳过此选择  
    按 c （change）进入编辑替换

2. normal 模式下  
   r :更换字符  
        <leader> r :更换程序中的变量  
         ctrl + n  c: 更改选择的变量名  

3. d + e : 当d在单词前时：删除该单词  
   d + $ ： 删除光标后面的所有  

4. y + $ : 粘贴光标所在位置后面的所有字符
5. y + e: 粘贴光标后面的单词


### 虚拟环境中jupyter-notebook 配置
python -m ipykernel install --user --name=py36  
注意上面必须是不在py36(自己创建的虚拟环境)中才可以，这个是为自己的py36安装ipykernel
