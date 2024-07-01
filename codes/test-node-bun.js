function compute() {
  let sum = 0.0;
  for (let i = 0; i < 100000000; i++) {
    sum += (Math.sin(i) * Math.cos(i)) / new Date().getMilliseconds();
  }
  return sum;
}

console.time("Execution Time");
const result = compute();
console.timeEnd("Execution Time");
