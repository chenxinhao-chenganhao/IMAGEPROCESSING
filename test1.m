clear all;
clc;
close all;
 
f=imread('fogs.jpg');
[m,n,d]=size(f);%�Ҷ�ͼ1ά����ɫͼ3ά
if d==1
    f1=f;%���ƺ��µ�ͼƬf1����Ϊ�ı���ͼƬ
elseif d==3
    f=rgb2gray(f);
    f1=f;
end
figure
imhist(f)
[count,x]=imhist(f);%count��ʾÿ���Ҷȼ����ж��ٸ����أ�x��ʾ�ж��ٸ��Ҷȼ���
 
PDF=count/(m*n);%PDF��ʾÿ���Ҷȼ�����ֵĸ��ʣ�һ����256��
CDF=cumsum(PDF);%CDF��ʾ������ӵĸ��ʣ�Ҳ�����ۼӸ���
 
for i=1:256
    xiangsuxushu=find(f==i);%ԭ���Ҷȼ���Ϊi�������ڵڼ�λ
    changdu=length(xiangsuxushu);
    for j=1:changdu
        f1(xiangsuxushu(j))=round(CDF(i)*256-1);%ÿһ��ԭ���Ҷȼ���Ϊi�����أ�
                                              %�Ҷȼ����Ϊ�ۼӳ��ָ���*256
                                              %��ȡ��
    end
end
 
figure
imhist(f1)
figure
imshow(f1)