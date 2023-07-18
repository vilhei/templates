#let ones(rows, columns:1) = {
    let result = ()
    let i = 0;
    while i < rows {
        result.push((1,))
        i+= 1
    }
    let matrix = math.mat(..result, delim:"[") 
    [$matrix$]
}
