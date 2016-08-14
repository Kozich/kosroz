BEGIN { FS=","}
$1 !~ /\#t/ {
    print $2 FS $6
    next   
}
