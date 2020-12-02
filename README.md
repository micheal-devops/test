
# commands
- build prebuild image
```
cd test/step1/
docker build -t train .

```
- build your image depend on above image
```
cd ..
docker build  --build-arg datafile=https://raw.githubusercontent.com/tonydev-ops/test/main/datafile2.txt  -t test .
```
