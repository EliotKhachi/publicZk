# Convert PDF to Text

There are many options to convert PDFs into text and they vary mainly by operating system.  
## Linux
In linux you can use a eBook application like *calibre*  
`sudo apt install calibre`  

or terminal tools such as *poppler-utils*, a package that has a *pdftotext* command
`sudo apt install poppler-utils` works for Debian, Mint, Ubuntu, etc.  
run `pdftotext -layout source.pdf target.txt`, where `source` is the pdf in question and `target` is the converted text file. This runs the command on the entire pdf.

To convery just a single range of pages do  
`pdftotext - layout -f M -l N source.pdf target.txt`, where  is the first page and N is the last one.  


## Windows

## Mac

## References
[Wondershare - Convert PDF to Text](https://pdf.wondershare.com/pdf-knowledge/pdf-to-text-linux.html)  

## Tags
#linux #programming
