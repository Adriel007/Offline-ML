console.log("inicio")
function compute() {
    let sum = 0.0;
    for (let i = 0; i < 100000000; i++) {
        sum += (Math.sin(i) * Math.cos(i)) / new Date().getMilliseconds();
    }
    return sum;
}
let media = 0;

for(let i=0; i<10; i++){
    let t0 = Date.now();
    const result = compute();
    let t1 = Date.now();
    let dt = (t1-t0)/1000;
    console.log(`tempo ${i+1}: ${dt}`);
    media += dt;
}
media /= 10;
console.log(`media: ${media}`);
console.log(`total: ${media*10}`);
console.log("fim");
