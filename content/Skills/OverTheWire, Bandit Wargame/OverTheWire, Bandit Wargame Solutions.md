##### Level 0
```bash
# Connect to the wargame server
ssh -p 2220 bandit0@bandit.labs.overthewire.org
# Read the file
cat readme
```
##### Level 1
```bash
# Read the file using ./ since - is a reserved character
cat ./-
```
##### Level 2
```bash
# Read the file using ./ and escape (\) since there are reserved characters
cat ./--spaces\ in\ this\ filename--
```
##### Level 3
```bash
# Change directory to inhere
cd inhere
# List all files
ls -a
# Read the file
cat ...Hiding-From-You
```
##### Level 4
```bash
# Change directory to inhere
cd inhere
# Look for the human readable file
file ./*
# Read the file
cat ./-file07
```
##### Level 5
```bash
# Change directory to inhere
cd inhere
# Find the said file 
# 'type -f' -> human readable
# 'size 1033c' -> 1033 bytes
# '-not -executable' -> not executable
find . -type f -size 1033c -not -executable
# Read the file
cat ./inhere/maybehere07/.file2
```
##### Level 6
```bash
# / -> Search from root
# '-user bandit7' -> Search for user bandit7
# '-group bandit6' -> Search for group bandit6
# '-size 33c' -> Search for size 33 bytes
# '2> /dev/null' -> Ignore errors (Permission denied)
find / -user bandit7 -group bandit6 -size 33c 2> /dev/null
# Read the file
cat ./var/lib/dpkg/info/bandit7.password
```
##### Level 7
```bash
# Read the file and search for the line with 'millionth'
cat data.txt | grep millionth
```
##### Level 8
```bash
# 'sort data.txt' -> Put same lines together
# 'uniq -u' -> Only show unique adjacent lines
sort data.txt | uniq -u
```
##### Level 9
```bash
# 'strings data.txt' -> Print printable characters
# 'grep ==' -> Find lines with at least two '='
strings data.txt | grep ==
```
##### Level 10
```bash
# Decode the file in base64 format
base64 -d data.txt
```
##### Level 11
```bash
# https://en.wikipedia.org/wiki/ROT13
tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt
```
##### Level 12
```bash
# Create new tmp directory
mkdir /tmp/My_tmp
# Copy the file into tmp directory and change directory
cp data.txt /tmp/My_tmp/data.txt
cd /tmp/My_tmp/
# Revert to binary from hex dump
xxd -r data.txt > bin
# Find compression method and expand (1)
file bin # gzip
mv bin bin.gz
gzip -d bin.gz
# Find compression method and expand (2)
file bin # bzip2
bzip2 -d bin # Outputs bin.out
mv bin.out bin
# Find compression method and expand (3)
file bin # gzip
mv bin bin.gz
gzip -d bin.gz
# Find compression method and expand (4)
file bin # tar
tar -xf bin # Outputs data5.bin
mv data5.bin bin
# Find compression method and expand (5)
file bin # tar
tar -xf bin # Outputs data6.bin
mv data6.bin bin
# Find compression method and expand (6)
file bin # bzip2
bzip2 -d bin # Outputs bin.out
mv bin.out bin
# Find compression method and expand (7)
file bin # tar
tar -xf bin # Outputs data8.bin
mv data8.bin bin
# Find compression method and expand (8)
file bin # gzip
mv bin bin.gz
gzip -d bin.gz
# Find compression method and expand (9)
file bin # ASCII text, no need to expand
# Read the file
cat bin
```
##### Level 13
```bash
FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
```