# Compile
## Node
```bash
node ./codes/test-node-bun.js --optimize --max-old-space-size
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

## WASM
```bash
source $HOME/emsdk/emsdk_env.sh
emcc codes/test-wasm.c -o codes/test.wasm -sEXPORTED_FUNCTIONS=_main -O3 -ffast-math -fno-exceptions -fno-rtti -finline-functions
python3 -m http.server
#http://localhost:8000/codes/test.html
```

# Results

|  Runs  |   Bun   |    Node    |    PHP    |  C (O3 + lm)  | JS (Vanilla) |   WASM    |
| :----: | :-----: | :--------: | :-------: | :-----------: | :----------: | :-------: |
|    1   |  6.82s  |  36.103s   |  8.8154258728027s   |     3.762575s    |   16.407s    |  15.556s  |
|    2   |  6.81s  |  34.795s   |  8.8452351093292s   |     3.879878s    |   16.369s    |  15.672s  |
|    3   |  6.77s  |  34.787s   |  8.9392211437225s   |     3.878242s    |   16.514s    |  15.511s  |
|    4   |  6.75s  |  34.723s   |  9.0250658988953s   |     3.766111s    |   16.098s    |  15.537s  |
|    5   |  6.74s  |  34.836s   |  9.0134148597717s   |     3.782099s    |   16.391s    |  15.531s  |
| **Average** | **6.778s** | **35.0488s** | **8.9276725769s** | **3.813781s** | **16.3558s** | **15.5614s** |
