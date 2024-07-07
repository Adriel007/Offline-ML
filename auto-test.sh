#!/bin/bash
# aviso de confirmação avisando que isso apagara todo o conteudo do arquivo incluindo os testes manuais, deseja confirmar? Y/N

read -p "Run tests will erase all content in output.txt file and manual tests. Are you sure? (Y/N): " confirm
if [ "$confirm" != "Y" ]; then
    exit
fi
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