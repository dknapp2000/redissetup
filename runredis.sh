script_path=$0
script_home=`dirname $0`
script_name=`basename $0 .sh`
logfile=${script_name}.log

cd $script_home

exec >>$logfile 2>&1

cat <<EOF

Starting redis server at `date +%Y-%m-%d.%H:%M:%S`

EOF

redis-server ~/redis/redis.conf
