ip=$(ip add | grep "10\.[0,1,8]" | awk -F"[ ,/]" '{print $6}' | head -n 1)
hostname=$(hostname)
path='/etc/mail.rc'

# backup
cp $path $path.bak -rf

# change
con=$(cat $path | grep -v "#" |grep "set from")
if [ $? -ne 0 ];then
   echo "set from=$hostname-$ip@10690007.net" >> $path
fi

con=$(cat $path | grep -v "#" |grep "set smtp") 
if [ $? -ne 0 ];then
   echo "set smtp=mail.10690007.net" >> $path
fi
