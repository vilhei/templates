#let uniform_col_vector(rows, columns:1, fill:0) = {
    let result = ()
    let i = 0;
    while i < rows {
        result.push((fill,))
        i+= 1
    }
    result
}

#let uniform_row_vector(rows, fill:0) = {
    let result = ()
    let i = 0;
    while i < rows {
        result.push(fill)
        i+= 1
    }
    result
}

#let ones(rows, columns:1) = {
    let rows = uniform_col_vector(rows, fill:1);
    let matrix = math.mat(..rows, delim:"[") 
    [$matrix$]
}

#let zeros(rows, columns:1) = {
    let rows = uniform_col_vector(rows, fill:0);
    let matrix = math.mat(..rows, delim:"[") 
    [$matrix$]
}


#let eye(n) = {
    let rows = ()
    let row_template = uniform_row_vector(n,fill:0)
    let i = 0
    while i < n {
        let row = row_template
        row.at(i) = 1
        rows.push(row)
        i += 1
    }
    let matrix = math.mat(..rows, delim:"[") 
    [$matrix$]
}
