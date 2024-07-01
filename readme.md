# Compile
## Node
```bash
node test-node-bun.js
```

## Bun
```bash
bun test-node-bun.js
```

## JS (Vanilla in Spyder Monkey)
```bash
python3 -m http.server 
#http://localhost:8000/test-js.html
```

## PHP
```bash
php test.php
```

## C
```bash
gcc test.c -o test -lm -O3 && ./test
```

## WASM (Optimization flags isn't working)
```bash
emcc test.c -o test.wasm -s WASM=1 -s SIDE_MODULE=1 -O3
python3 -m http.server
#http://localhost:8000/test.html
```

# Results
|  Runs  |   Bun   |   Node   |   PHP    |   C (O3 + lm)   |  JS (Vanilla)  |
| :----: | :-----: | :------: | :------: | :-------------: | :------------: |
|    1   |  2.87s  |  18.86s  |  5.40s   |  1.51s          |  2.26s         |
|    2   |  2.30s  |  18.83s  |  5.49s   |  1.51s          |  2.53s         |
|    3   |  2.32s  |  18.79s  |  5.46s   |  1.51s          |  2.52s         |
|    4   |  2.30s  |  18.66s  |  5.50s   |  1.52s          |  2.53s         |
|    5   |  2.32s  |  18.81s  |  5.39s   |  1.53s          |  2.54s         |
| **Average** | **2.42s** | **18.79s** | **5.45s** | **1.52s** |  **3.09s**  |