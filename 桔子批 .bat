@echo off

title 桔子批

color 0a








set a=33

set b=1 

:re

set /a a+=1

set /a b+=1

mode %a%,%b% 

if %a% lss 58 goto re









:input

cls

echo.

echo                                 !\___/！ 
echo                                 ! ●x● 
echo                      ╭ .  _____ノ  ︶/ 
echo                       \＼/    /、   丿      
echo                       ＼ __ ____   ノ         
echo                        (/  \)  (/ヽ)          
echo                ￣￣￣￣￣￣￣￣￣￣￣￣￣￣    
echo                         制作:subdue

echo                        2017年11月15日

echo.








echo 功能菜单:

echo          [1] 检测网关192.168.1.1 [发送5个数据包]

echo          [2] 检测目的网络可达性 [发送5个数据包]

echo          [3] 检测路由路径 [Tracert IP/域名]

echo          [4] 域名解析查询 [Nslookup 域名]

echo          [5] 查看本机IP以及网关

echo          [6] 刷新本地DNS缓存

echo          [7] 合成腾讯视频

echo          [8] 磁盘清理

echo          [9] 重启电脑

echo          [10]关闭电脑

echo          [11]退出

echo.








set /p s=请输入您要的功能，然后回车:

if %s%==1 goto 1

if %s%==2 goto 2

if %s%==3 goto 3

if %s%==4 goto 4

if %s%==5 goto 5

if %s%==6 goto 6

if %s%==7 goto 7

if %s%==8 goto 8

if %s%==9 goto 9

if %s%==10 goto 10

if %s%==11 goto 11

set /p =您的输入错误,请重新输入!<nul&ping -n 2 127.1>nul&cls&goto input








:1

ping 192.168.1.1 -n 5

set /p =按任意键清空Ping结果<nul&pause>nul

goto input









:2

cls

echo                        使用说明

echo             ============================

echo               Ping命令可以检查网络是否

echo               连通，可以很好地帮助我们

echo               分析和判定网络故障。下方

echo               输入域名或IP的格式为：

echo               baidu.com/123.125.114.144

echo             ============================

choice /n /m "输入域名或IP地址请按 Y，返回功能菜单请按 N。"

if errorlevel 2 goto input








:b

set /p w=请输入你要Ping的域名或IP地址:

ping %w% -n 5

choice /n /m "再次输入域名或IP地址请按 Y，返回功能菜单请按 N。"

if errorlevel 2 goto input

if errorlevel 1 goto b








:3

cls

echo                        使用说明

echo             ============================

echo               Tracert（跟踪路由）是路由

echo               跟踪实用程序,用于确定IP数

echo               据包访问目标所采取的路径。

echo               下方输入域名或IP的格式为：

echo               baidu.com/123.125.114.144

echo             ============================

choice /n /m "输入域名或IP地址请按 Y，返回功能菜单请按 N。"

if errorlevel 2 goto input







:c

set /p d=请输入你要Tracert的域名或IP地址:

tracert %d%

choice /n /m "再次输入域名或IP地址请按 Y，返回功能菜单请按 N。"

if errorlevel 2 goto input

if errorlevel 1 goto c







:4

cls

echo                        使用说明

echo             ============================

echo               Nslookup是一个监测网络中D

echo               NS服务器是否能正确实现域名

echo               解析的命令行工具。

echo             ============================

choice /n /m "查询域名请按 Y，返回功能菜单请按 N。"

if errorlevel 2 goto input








:d

set /p k=请输入你要查询的域名(例如:baidu.com):

nslookup %k%

choice /n /m "再次输入域名请按 Y，返回功能菜单请按 N。"

if errorlevel 2 goto input

if errorlevel 1 goto d








:5

ipconfig|find "192"

set /p =按任意键清空查询结果<nul&pause>nul&goto input








:6

ipconfig /flushdns>nul

echo 已成功刷新 DNS 解析缓存，3秒后自动清空结果

ping -n 3 127.1>nul&goto input







:7

cls

echo                        使用说明 

echo             ===============================

echo               首先你得有个腾讯视频客户端，

echo               下载好你的视频后，按Y 合成你

echo               的视频。注意：有些视频是一个

echo               一个的片段，这是正常的，不是

echo               合成的问题。还有视频名字是以

echo               视频片段所在文件夹的名字命名

echo               的，出现乱七八糟的名字莫奇怪

echo             ===============================

choice /n /m "确认合成腾讯视频吗？确认请按 Y，返回功能菜单请按 N"

if errorlevel 2 goto input








:a

echo 正在合成，请稍等片刻......&ping -n 4 127.1>nul

if exist e: (

e:&attrib -h /d /s>nul

) else (

d:&attrib -h /d /s>nul

)

if not exist c:\users\%username%\desktop\腾讯视频 (

md c:\users\%username%\desktop\腾讯视频

)
for /f "delims=" %%i in ('dir /ad /b') do                        (

if exist %%i\vodcache                                          (

for /f "eol=F delims=" %%o in ('dir /ad /b %%i\vodcache') do (

if exist %%i\vodcache\%%o\*.tdl                            (

copy /b %%i\vodcache\%%o\*.tdl c:\users\%username%\desktop\腾讯视频\%%o.mp4

)

 )

  )

   )>nul 2>nul

echo 合成视频成功，3秒后为你打开腾讯视频文件夹

ping -n 3 127.1>nul

start c:\users\%username%\desktop\腾讯视频

ping -n 3 127.1>nul

choice /c ync /n /m "删除视频文件夹请按 Y，再次合成请按 N，返回功能菜单请按 C"

if errorlevel 3 goto input

if errorlevel 2 goto a

if exist c:\users\%username%\desktop\腾讯视频 (
del /q c:\users\%username%\desktop\腾讯视频&rd c:\users\%username%\desktop\腾讯视频
)
echo 已删除腾讯视频文件夹

echo 5秒后自动返回功能菜单

ping -n 5 127.1>nul&goto input









:8

echo 正在启动磁盘清理，请稍等片刻......

ping -n 5 127.1>nul

echo 启动成功

start cleanmgr.exe

set /p =按任意键清空启动信息<nul&pause>nul&cls&goto input








:9

choice /n /m "你确认重启吗？确认请按 Y，取消请按 N"

if errorlevel 2 cls&goto input

shutdown /r /t 0&exit







:10

choice/n /m "你确认关机吗？确认请按 Y，取消请按 N"

if errorlevel 2 cls&goto input

shutdown /s /t 0&exit

:11