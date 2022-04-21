#!/bin/bash
######################################################################
##                                                                  ##
##   遍历指定目录获取当前目录下指定后缀（如txt和ini）的文件名            ##
##                                                                  ##
######################################################################
 
##递归遍历
traverse_dir()
{
    filepath=$1
    
    for file in `ls -a $filepath`
    do
        if [ -d ${filepath}/$file ]
        then
            if [[ $file != '.' && $file != '..' ]]
            then
                #递归
                traverse_dir ${filepath}/$file
            fi
        else
            #调用查找指定后缀文件
            check_suffix ${filepath}/$file
        fi
    done
}
 
 
##获取后缀为txt或ini的文件
check_suffix()
{
    file=$1
    
    if [ "${file##*.}"x = "gt"x ] || [ "${file##*.}"x = "GT"x ];then
        echo $file
        cp ${file} /root/DBNet.pytorch/msra/testsgt/
    fi    
}
 
#测试指定目录  /data_output/ci/history
 traverse_dir /root/DBNet.pytorch/msra/test