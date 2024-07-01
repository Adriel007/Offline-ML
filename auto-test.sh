#!/bin/bash

echo "Bun Test:" > ./output.txt
for i in {1..5}
do
    bun run ./codes/test-node-bun.js >> ./output.txt 2>&1
done

echo "----------------------------" >> ./output.txt

echo "Node Test:" >> ./output.txt
for i in {1..5}
do
    node ./codes/test-node-bun.js >> ./output.txt 2>&1
done

echo "----------------------------" >> ./output.txt

echo "PHP Test:" >> ./output.txt
for i in {1..5}
do
    php ./codes/test.php >> ./output.txt 2>&1
done

echo "----------------------------" >> ./output.txt

echo "C (O3 + lm) Test:" >> ./output.txt
for i in {1..5}
do
    gcc ./codes/test.c -o ./codes/test -lm -O3 && ./codes/test >> ./output.txt 2>&1
done

echo "----------------------------" >> ./output.txt