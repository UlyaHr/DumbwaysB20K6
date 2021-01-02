const cariNilaiTeratas = (array) => {
  const sortedArray = array.sort((a, b) => b - a);
  const maxOdd = [];

  for (i in sortedArray) {
    if (sortedArray[i] % 2 != 0) {
      maxOdd.push(sortedArray[i]);
    }
  }

  console.log(`Nilai tertinggi pertama: ${maxOdd[0]}`);
  console.log(`Nilai tertinggi kedua: ${maxOdd[1]}`);
  console.log(`Nilai tertinggi ketiga: ${maxOdd[3]}`);
};

cariNilaiTeratas([
  1,
  4,
  6,
  2,
  6,
  8,
  9,
  21,
  20,
  14,
  3,
  6,
  11,
  1,
  1,
  2,
  3,
  4,
  6,
  8,
  9,
  2,
  1,
  5,
  2,
  5,
  6,
  8,
  3,
  2,
]);
