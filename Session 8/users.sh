echo The number of users working in the system are
who -q
echo The username of users logged in are
who | cut -d' ' -f1 | sort | uniq

