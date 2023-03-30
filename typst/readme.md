<!-- omit in toc -->
# Typst templates

- [Template\_vh](#template_vh)
  - [Usage](#usage)
  - [Optional arguments](#optional-arguments)

## Template_vh

### Usage

See [example](test_template.typ) for example usage

- Download [template_vh](./template_vh.typ).
- Put in some location of your choosing.

Basic with title and authors

```c++
#import "path_to_template_vh.typ": conf

#show: doc => conf(
    title: "My title",
    authors:("Author1","Author2",...),
    Other optional arguments,
    ...
    doc,
)

= Heading 1

Write your text as normal here
```

### Optional arguments

- #### **title**

  - default : none
  - type : string
  - examples:
    - title: "my title"

- #### **authors**

  - default : none
  - type : string or array of strings
  - examples:
    - authors: "name surname"
    - authors: ("name1 surname1", "name2 surname2")
- **separateTitlePage**
  - default : false
  - type : bool
  - examples:
    - separateTitlePage : true
- **background**
  - NOT IN USE CURRENTLY
  - default : none
  - type : content
  - examples :
- **pagenumberAlign**
  - default : center
  - type : alignment or 2d alignment
    - possible values :
      - start
      - end
      - left
      - center
      - right
      - top
      - horizon
      - bottom
      - 2 combinations with + for 2d alignment
  - examples:
    - pagenumberAlign : start
    - pagenumberAlign : end+horizon
- **justifyContent**
  - default : true,
  - type : bool,
  - examples:
    - justifyContent: false
