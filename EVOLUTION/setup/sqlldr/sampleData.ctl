OPTIONS (DIRECT=TRUE)
load data
infile '%DEMODIRECTORY%\%USER%\sampleData\sampleData.dat'
append
into table %DATA_STAGING_TABLE% 
xmltype(XMLDATA) (
 filename filler char(120),
 XMLDATA  lobfile(filename) terminated by eof)
