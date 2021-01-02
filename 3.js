const gambarPola = (num) => {
  const array = [];
  let char = ["D", "U", "M", "B", "W", "A", "Y", "S"];
  let n = num;

  for (let i = 0; i <= num; i++) {
    array[i] = [];

    for (let j = 0; j <= num; j++) {
      if (j === i) {
        array[i][j] = char[j];
      }
      if (j === n) {
        array[i][j] = char[j];
      }
    }
    n--;
  }

  console.table(array);
};

gambarPola(7);
