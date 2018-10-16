x=0:pi/255.5:2*pi;
y=round(127+127*sin(x));
fid=fopen('D:\sindata.coe','wt');
fprintf(fid,'%s\n','memory_initialization_radix = 16;');
fprintf(fid,'%s\n','memory_initialization_vector = ');
for i=1:1:512
    fprintf(fid,'%x,\n',y(i));
end
fclose(fid);