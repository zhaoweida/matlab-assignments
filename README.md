简介：
    一个命令行文本计数统计程序。能正确统计导入的纯英文txt文本中的字符数，单词数，句子数。
用法：
    1、将程序(homework_two.m)，需要统计的任意英文文本（文件名.txt)添加到工作路径。
    2、在命令行窗口调用函数homework_two，其格式如下：
                        
                             homework_two('文件名.txt','参数');

                其中：参数为c，统计字符数；
                      参数为w，统计单词数；
                      参数为s，统计句子数;
                      参数为a，统计注释行数;
                      参数为l，统计行数；
                      参数为n，统计空行数。



文件列表：
homework_two.m
file.txt
项目文档.txt



使用文件file.txt，运行结果：

>> homework_two('file.txt','c');
字符数=
   245

>> homework_two('file.txt','w');
单词数=
    39

>> homework_two('file.txt','s');
句子数=
     3

>> homework_two('file.txt','a');
注释行数=
     3

>> homework_two('file.txt','l');
行数=
     5

>> homework_two('file.txt','n');
空行数=
     2
