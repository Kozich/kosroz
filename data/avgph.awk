BEGIN {
    d=200
    a=0
    j=0
    for (i=1;i<=NR/5+1;i++){
        getline
        for (j=1;j<=5;j++){
            a+=$2
            getline
        }
        print $1,a/j
        a=0
        j=0
    }
}
