function numbers=homework_two(x,y)                 %��������xΪ�ļ�����yΪ����
fid=fopen(x,'r');                                  %��ֻ����ʽ���ļ�
[characters,charcter_numbers]=fscanf(fid,'%c');    %���ַ�Ϊ��λ��ȡ�ļ�ȫ������,charcter_numbersΪ�ַ���
fid=fopen(x,'r');
[words,word_numbers]=fscanf(fid,'%s');             %���ַ���Ϊ��λ��ȡ�ļ�ȫ�����ݣ�word_numbersΪ������
fid=fopen(x,'r');
i=0;j=0;k=1;
for v=1:charcter_numbers                           %����ѭ��
  A=fscanf(fid,'%c',1);                            %���ַ�Ϊ��λ��ȡ�ļ�1���ַ�
    if A=='.'|A=='?'|A=='!'
        i=i+1;                                     %ͳ�ƾ�����
    else if A=='%'
            j=j+1;                                 %ͳ��ע������
        else if A==char(10)
                k=k+1;                             %ͳ������
            end
        end
    end
end
m=0;
fid=fopen(x,'r');
for v=1:k                                          %����ѭ��
  tline=fgetl(fid);
    if isempty(tline)
          m=m+1;                                   %ͳ�ƿ�����
    end
end
fclose(fid);                                       %�ر��ļ�
numbers=0;
if y=='c'
    numbers=charcter_numbers;                      %��y=='c'������ֵΪ�ַ���
    disp('�ַ���=');
    disp(numbers);
else if y=='w'
        numbers=word_numbers;                      %��y=='w'������ֵΪ������
        disp('������=');
        disp(numbers);
    else if y=='s'
            numbers=i;                             %��y=='s'������ֵΪ������
            disp('������=');
            disp(numbers);
        else if y=='a'
                numbers=j;                         %��y=='a'������ֵΪע������
                disp('ע������=');
                disp(numbers);
            else if y=='l'
                    numbers=k;                     %��y=='l'������ֵΪ����
                    disp('����=');
                    disp(numbers);
                else if y=='n'
                        numbers=m;                 %��y=='n'������ֵΪ������
                        disp('������=');
                        disp(numbers); 
                    end
                end
            end
        end
    end
end
