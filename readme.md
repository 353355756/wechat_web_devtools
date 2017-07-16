# Linux微信web开发者工具

linux下使用微信web开发者工具.

![wx-dev-tools v-0.19.191100](https://img.shields.io/badge/wx_dev_tools-0.19.191100-green.svg)
![nw.js v-0.19.4](https://img.shields.io/badge/nw.js-v0.19.4-blue.svg)

## Description
**Linux微信web开发者工具** 可在linux桌面环境跑起微信开发者工具,原理是微信开发者
工具本质是nw.js程序,把它移植到linux下没大问题.然后,负责编译wxml和wxss(可能还有
其他功能)的wcc和wcsc,利用wine来跑皆可.

- 2017/03/28 更新:微信小程序升级到0.15.152800
- 2017/03/30 更新:微信小程序升级到0.15.152900
- 2017/05/18 更新:微信小程序升级到0.17.170900
- 2017/05/19 更新:微信小程序升级到0.17.171900
- 2017/05/29 更新:微信小程序升级到0.17.172600
- 2017/06/23 更新:微信小程序升级到0.18.182200
- 2017/07/11 更新:微信小程序升级到0.19.191100

## Usage

```console
npm install -g wxdt
```

### 需要小程序开发
1. 用下面的命令安装wine(ubuntu下)

```console
sudo apt install wine
```

2. wcc.exe和wcsc.exe是32位的,用下面命令创建32位环境

```console
WINEARCH=win32 WINEPREFIX=~/.wine32 winecfg
```

3. 安装

```console
sudo npm install -g wxdt
```

4. 启动

```console
./bin/wxdt
```

## 更新

```console
sudo npm install -g wxdt
```

### 更新到最新版

可以在本项目未更新情况下使用，可能伴随一些bug

1. 执行脚本会自动下载安装最新开发者工具（window x64）

```console
sudo ./scripts/update_package_nw.sh
```

2. 安装过程中确认安装到`$HOME/.wine/drive_c/Program Files (x86)/Tencent/微信web开发者工具`路径下

3. 最后完成去掉打开开发者工具的钩

然后执行`wxdt`，如果没有问题欢迎提PR~


## 截图

![新建项目界面](https://github.com/cytle/wechat_web_devtools/raw/a27def24bd78aa529bbab641cca83694ba6f35d0/images/新建项目界面.png)


![设置界面](https://github.com/cytle/wechat_web_devtools/raw/a27def24bd78aa529bbab641cca83694ba6f35d0/images/设置界面.png)


![调试界面](https://github.com/cytle/wechat_web_devtools/raw/a27def24bd78aa529bbab641cca83694ba6f35d0/images/调试界面.png)

上面项目来自https://github.com/jectychen/wechat-v2ex


## 其它

### 免责声明
微信开发者工具版权归腾讯公司所有，本项目指在交流学习之用，如有不当之处，请联系本人，邮箱：canyoutle@gmail.com
