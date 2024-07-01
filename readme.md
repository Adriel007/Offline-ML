# Compile
## Node
```bash
node ./codes/test-node-bun.js
```

## Bun
```bash
bun ./codes/test-node-bun.js
```

## JS (Vanilla in Spyder Monkey)
```bash
python3 -m http.server 
#http://localhost:8000/codes/test-js.html
```

## PHP
```bash
php ./codes/test.php
```

## C
```bash
gcc ./codes/test.c -o ./codes/test -lm -O3 && ./codes/test
```

## WASM (Optimization flags isn't working)
```bash
emcc ./codes/test.c -o ./codes/test.wasm -s WASM=1 -s SIDE_MODULE=1 -O3
python3 -m http.server
#http://localhost:8000/codes/test.html
```

# Results

|  Runs  |   Bun   |    Node    |    PHP    |  C (O3 + lm)  | JS (Vanilla) |  WASM  |
| :----: | :-----: | :--------: | :-------: | :-----------: | :----------: | :----: |
|    1   |  6.73s  |  34.075s   |  8.632s   |     3.767s    |   16.407s    |  null  |
|    2   |  6.67s  |  34.473s   |  8.599s   |     3.763s    |   16.369s    |  null  |
|    3   |  6.75s  |  33.889s   |  8.533s   |     3.759s    |   16.514s    |  null  |
|    4   |  6.57s  |  33.791s   |  8.578s   |     3.723s    |   16.098s    |  null  |
|    5   |  6.60s  |  33.818s   |  8.602s   |     3.754s    |   16.391s    |  null  |
| **Average** | **6.66s** | **34.009s** | **8.589s** | **3.753s** | **16.356s** | **null** |