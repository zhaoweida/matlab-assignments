function numbers=homework_two(x,y)                 %建立函数x为文件名，y为参数
fid=fopen(x,'r');                                  %以只读方式打开文件
[characters,charcter_numbers]=fscanf(fid,'%c');    %以字符为单位读取文件全部内容,charcter_numbers为字符数
fid=fopen(x,'r');
[words,word_numbers]=fscanf(fid,'%s');             %以字符串为单位读取文件全部内容，word_numbers为单词数
fid=fopen(x,'r');
i=0;j=0;k=1;
for v=1:charcter_numbers                           %建立循环
  A=fscanf(fid,'%c',1);                            %以字符为单位读取文件1个字符
    if A=='.'|A=='?'|A=='!'
        i=i+1;                                     %统计句子数
    else if A=='%'
            j=j+1;                                 %统计注释行数
        else if A==char(10)
                k=k+1;                             %统计行数
            end
        end
    end
end
m=0;
fid=fopen(x,'r');
for v=1:k                                          %建立循环
  tline=fgetl(fid);
    if isempty(tline)
          m=m+1;                                   %统计空行数
    end
end
fclose(fid);                                       %关闭文件
numbers=0;
if y=='c'
    numbers=charcter_numbers;                      %若y=='c'，函数值为字符数
    disp('字符数=');
    disp(numbers);
else if y=='w'
        numbers=word_numbers;                      %若y=='w'，函数值为单词数
        disp('单词数=');
        disp(numbers);
    else if y=='s'
            numbers=i;                             %若y=='s'，函数值为句子数
            disp('句子数=');
            disp(numbers);
        else if y=='a'
                numbers=j;                         %若y=='a'，函数值为注释行数
                disp('注释行数=');
                disp(numbers);
            else if y=='l'
                    numbers=k;                     %若y=='l'，函数值为行数
                    disp('行数=');
                    disp(numbers);
                else if y=='n'
                        numbers=m;                 %若y=='n'，函数值为空行数
                        disp('空行数=');
                        disp(numbers); 
                    end
                end
            end
        end
    end
end
