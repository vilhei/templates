#let conf(
    title: none,
    authors: none,
    separateTitlePage: false,
    background: none, // TODO, not working correctly?
    pagenumberAlign: center,
    justifyContent:true,
    doc
    ) = {

    set par(justify: justifyContent)
    set page(paper: "a4",
    numbering: "1",
    number-align: pagenumberAlign,
    background: none)

    set text(font:"colibri",size: 11pt)
    set heading(numbering: "1.")

    show heading: it => [
        #set align(left)
        #pad(y:8pt,counter(heading).display() + " " + it.body)
    ]

    align(center,text(24pt,weight:"bold",title))
    
    if type(authors) =="string"{
        align(center,authors)
    }else if type(authors) =="array"{ 
        set align(center)  
        grid(columns: 1,
        row-gutter: 8pt,
        rows:authors.len(),
        ..authors,
        )
    }

    if separateTitlePage{
        pagebreak()
    }

    set align(left)
    doc
}