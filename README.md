# FlexParseHtmlTag
Using Flex(The Fast Lexical Analyzer) to parse a html file to get the html tag.

##Get the Flex

Linux:
```
sudo apt-get install flex
```
Mac OS X:
```
sudo port install flex
```

##Run the code, type the following commands:
```
flex parse_html_tag.lex   // assumes you stored the specification in parse_html_tag.lex
gcc lex.yy.c 
./a.out
```
Then you can type the filename and it will print the html tag. 


## References
* <http://web.eecs.utk.edu/~bvz/cs461/notes/flex/>
