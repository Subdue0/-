@echo off

title ������

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

echo                                 !\___/�� 
echo                                 ! ��x�� 
echo                      �q .  _____��  ��/ 
echo                       \��/    /��   د      
echo                       �� __ ____   ��         
echo                        (/  \)  (/�c)          
echo                ����������������������������    
echo                         ����:subdue

echo                        2017��11��15��

echo.








echo ���ܲ˵�:

echo          [1] �������192.168.1.1 [����5�����ݰ�]

echo          [2] ���Ŀ������ɴ��� [����5�����ݰ�]

echo          [3] ���·��·�� [Tracert IP/����]

echo          [4] ����������ѯ [Nslookup ����]

echo          [5] �鿴����IP�Լ�����

echo          [6] ˢ�±���DNS����

echo          [7] �ϳ���Ѷ��Ƶ

echo          [8] ��������

echo          [9] ��������

echo          [10]�رյ���

echo          [11]�˳�

echo.








set /p s=��������Ҫ�Ĺ��ܣ�Ȼ��س�:

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

set /p =�����������,����������!<nul&ping -n 2 127.1>nul&cls&goto input








:1

ping 192.168.1.1 -n 5

set /p =����������Ping���<nul&pause>nul

goto input









:2

cls

echo                        ʹ��˵��

echo             ============================

echo               Ping������Լ�������Ƿ�

echo               ��ͨ�����Ժܺõذ�������

echo               �������ж�������ϡ��·�

echo               ����������IP�ĸ�ʽΪ��

echo               baidu.com/123.125.114.144

echo             ============================

choice /n /m "����������IP��ַ�밴 Y�����ع��ܲ˵��밴 N��"

if errorlevel 2 goto input








:b

set /p w=��������ҪPing��������IP��ַ:

ping %w% -n 5

choice /n /m "�ٴ�����������IP��ַ�밴 Y�����ع��ܲ˵��밴 N��"

if errorlevel 2 goto input

if errorlevel 1 goto b








:3

cls

echo                        ʹ��˵��

echo             ============================

echo               Tracert������·�ɣ���·��

echo               ����ʵ�ó���,����ȷ��IP��

echo               �ݰ�����Ŀ������ȡ��·����

echo               �·�����������IP�ĸ�ʽΪ��

echo               baidu.com/123.125.114.144

echo             ============================

choice /n /m "����������IP��ַ�밴 Y�����ع��ܲ˵��밴 N��"

if errorlevel 2 goto input







:c

set /p d=��������ҪTracert��������IP��ַ:

tracert %d%

choice /n /m "�ٴ�����������IP��ַ�밴 Y�����ع��ܲ˵��밴 N��"

if errorlevel 2 goto input

if errorlevel 1 goto c







:4

cls

echo                        ʹ��˵��

echo             ============================

echo               Nslookup��һ�����������D

echo               NS�������Ƿ�����ȷʵ������

echo               �����������й��ߡ�

echo             ============================

choice /n /m "��ѯ�����밴 Y�����ع��ܲ˵��밴 N��"

if errorlevel 2 goto input








:d

set /p k=��������Ҫ��ѯ������(����:baidu.com):

nslookup %k%

choice /n /m "�ٴ����������밴 Y�����ع��ܲ˵��밴 N��"

if errorlevel 2 goto input

if errorlevel 1 goto d








:5

ipconfig|find "192"

set /p =���������ղ�ѯ���<nul&pause>nul&goto input








:6

ipconfig /flushdns>nul

echo �ѳɹ�ˢ�� DNS �������棬3����Զ���ս��

ping -n 3 127.1>nul&goto input







:7

cls

echo                        ʹ��˵�� 

echo             ===============================

echo               ��������и���Ѷ��Ƶ�ͻ��ˣ�

echo               ���غ������Ƶ�󣬰�Y �ϳ���

echo               ����Ƶ��ע�⣺��Щ��Ƶ��һ��

echo               һ����Ƭ�Σ����������ģ�����

echo               �ϳɵ����⡣������Ƶ��������

echo               ��ƵƬ�������ļ��е���������

echo               �ģ��������߰��������Ī���

echo             ===============================

choice /n /m "ȷ�Ϻϳ���Ѷ��Ƶ��ȷ���밴 Y�����ع��ܲ˵��밴 N"

if errorlevel 2 goto input








:a

echo ���ںϳɣ����Ե�Ƭ��......&ping -n 4 127.1>nul

if exist e: (

e:&attrib -h /d /s>nul

) else (

d:&attrib -h /d /s>nul

)

if not exist c:\users\%username%\desktop\��Ѷ��Ƶ (

md c:\users\%username%\desktop\��Ѷ��Ƶ

)
for /f "delims=" %%i in ('dir /ad /b') do                        (

if exist %%i\vodcache                                          (

for /f "eol=F delims=" %%o in ('dir /ad /b %%i\vodcache') do (

if exist %%i\vodcache\%%o\*.tdl                            (

copy /b %%i\vodcache\%%o\*.tdl c:\users\%username%\desktop\��Ѷ��Ƶ\%%o.mp4

)

 )

  )

   )>nul 2>nul

echo �ϳ���Ƶ�ɹ���3���Ϊ�����Ѷ��Ƶ�ļ���

ping -n 3 127.1>nul

start c:\users\%username%\desktop\��Ѷ��Ƶ

ping -n 3 127.1>nul

choice /c ync /n /m "ɾ����Ƶ�ļ����밴 Y���ٴκϳ��밴 N�����ع��ܲ˵��밴 C"

if errorlevel 3 goto input

if errorlevel 2 goto a

if exist c:\users\%username%\desktop\��Ѷ��Ƶ (
del /q c:\users\%username%\desktop\��Ѷ��Ƶ&rd c:\users\%username%\desktop\��Ѷ��Ƶ
)
echo ��ɾ����Ѷ��Ƶ�ļ���

echo 5����Զ����ع��ܲ˵�

ping -n 5 127.1>nul&goto input









:8

echo �������������������Ե�Ƭ��......

ping -n 5 127.1>nul

echo �����ɹ�

start cleanmgr.exe

set /p =����������������Ϣ<nul&pause>nul&cls&goto input








:9

choice /n /m "��ȷ��������ȷ���밴 Y��ȡ���밴 N"

if errorlevel 2 cls&goto input

shutdown /r /t 0&exit







:10

choice/n /m "��ȷ�Ϲػ���ȷ���밴 Y��ȡ���밴 N"

if errorlevel 2 cls&goto input

shutdown /s /t 0&exit

:11