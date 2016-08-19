BEGIN {
    d=50
    a=0
    j=0
    for (i;(i+2)*d<max;i++){
        getline
        while ($1<(i+1)*d){
            a+=$2
            j++
            getline
        }
        print (i+1)*d,a/j
        a=0
        j=0
    }
}
