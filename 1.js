const hitungUangKembalian = (uang, harga) => {
  const kembalian = uang - harga;

  const jumlahPecahan = () => {
    let [
      seRatusRibu,
      limaPuluhRibu,
      duaPuluhRibu,
      sePuluhRibu,
      limaRibu,
      duaRibu,
      seRibu,
      limaRatus,
      duaRatus,
      seRatus,
    ] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

    let sisa = kembalian;
    while (sisa - 100000 >= 0) {
      sisa -= 100000;
      seRatusRibu = +1;
    }
    while (sisa - 50000 >= 0) {
      sisa -= 50000;
      limaPuluhRibu++;
    }
    while (sisa - 20000 >= 0) {
      sisa -= 20000;
      duaPuluhRibu++;
    }
    while (sisa - 10000 >= 0) {
      sisa -= 10000;
      sePuluhRibu++;
    }
    while (sisa - 5000 >= 0) {
      sisa -= 5000;
      limaRibu++;
    }
    while (sisa - 2000 >= 0) {
      sisa -= 2000;
      duaRibu++;
    }
    while (sisa - 1000 >= 0) {
      sisa -= 1000;
      seRibu++;
    }
    while (sisa - 500 >= 0) {
      sisa -= 500;
      limaRatus++;
    }
    while (sisa - 200 >= 0) {
      sisa -= 200;
      duaRatus++;
    }
    while (sisa - 100 >= 0) {
      sisa -= 100;
      seRatus++;
    }

    let pecahan = [
      seRatusRibu,
      limaPuluhRibu,
      duaPuluhRibu,
      sePuluhRibu,
      limaRibu,
      duaRibu,
      seRibu,
      limaRatus,
      duaRatus,
      seRatus,
    ];

    for (lembar in pecahan) {
      if (pecahan[lembar] > 0) {
        if (lembar == 0) {
          console.log(
            `Uang Pecahan Rp 100.000 seebanyak ${pecahan[lembar]} Lembar`
          );
        } else if (lembar == 1) {
          console.log(
            `Uang Pecahan Rp 50.000 seebanyak ${pecahan[lembar]} Lembar`
          );
        } else if (lembar == 2) {
          console.log(
            `Uang Pecahan Rp 20.000 seebanyak ${pecahan[lembar]} Lembar`
          );
        } else if (lembar == 3) {
          console.log(
            `Uang Pecahan Rp 10.000 seebanyak ${pecahan[lembar]} Lembar`
          );
        } else if (lembar == 4) {
          console.log(
            `Uang Pecahan Rp 5.000 seebanyak ${pecahan[lembar]} Lembar`
          );
        } else if (lembar == 5) {
          console.log(
            `Uang Pecahan Rp 2.000 seebanyak ${pecahan[lembar]} Lembar`
          );
        } else if (lembar == 6) {
          console.log(
            `Uang Pecahan Rp 1.000 seebanyak ${pecahan[lembar]} Lembar`
          );
        } else if (lembar == 7) {
          console.log(
            `Uang Pecahan Rp 500 seebanyak ${pecahan[lembar]} Lembar`
          );
        } else if (lembar == 8) {
          console.log(
            `Uang Pecahan Rp 200 seebanyak ${pecahan[lembar]} Lembar`
          );
        } else if (lembar == 9) {
          console.log(
            `Uang Pecahan Rp 100 seebanyak ${pecahan[lembar]} Lembar`
          );
        }
      }
    }
    if (sisa > 0) {
      console.log(`Sisa kembalian Rp ${sisa}`);
    }
  };

  const angkaTerbilang = (target) => {
    const units = ['', 'ribu', 'juta', 'milyar',]
    const maxIndex = units.length - 1
  
    const digitToUnit = (digit) => {
      const curIndex = digit / 3
      return curIndex <= maxIndex ? units[curIndex] : units[maxIndex]
    }
  
    const numbers = ['', 'satu', 'dua', 'tiga', 'empat', 'lima', 'enam', 'tujuh', 'delapan', 'sembilan']
    const numberToText = (index) => {
      return numbers[index] || ''
    }
  
    const terbilang = (angka) => {
      const angkaLength   = angka.length
      const angkaMaxIndex = angkaLength - 1
  
      // Angka Nol
      if (angkaMaxIndex === 0 && Number(angka[0]) === 0) {
        return 'nol'
      }
  
      let space = ''
      let result = ''
  
      let i = 0
      while (i !== angkaLength) {
  
        const digitCount = angkaMaxIndex - i
        const modGroup = digitCount % 3 // [2,1,0]
        const curAngka = Number(angka[i])
  
        if (digitCount === 3 && curAngka === 1 && (i === 0 || 
          (Number(angka[i - 2]) === 0 && Number(angka[i - 1]) === 0))) {
          /* Angka Seribu */
          result += `${space}seribu`
        } else {
          if (curAngka !== 0) {
            if (modGroup === 0) {
              /* Angka Satuan Bukan Nol */
              result += `${space}${numberToText(curAngka)}${(i === angkaMaxIndex ? '' : ' ')}${digitToUnit(digitCount)}`
            } else if (modGroup === 2) {
              /* Angka Ratusan */
              if (curAngka === 1) {
                result += `${space}seratus`
              } else {
                result += `${space}${numberToText(curAngka)} ratus`
              }
            } else {
              /* Angka Sepuluh dan Belasan */
              if (curAngka === 1) {
                i++ // Skip Next Angka
                const nextAngka = Number(angka[i])
                if (nextAngka === 0) {
                  result += `${space}sepuluh`
                  /* Proses Next Angka Sekarang */
                  if (digitCount !== 1 && (Number(angka[i - 2]) !== 0 || Number(angka[i - 1]) !== 0)) {
                    result += ` ${digitToUnit(digitCount - 1)}`
                  }
                } else {
                  if (nextAngka === 1) {
                    result += `${space}sebelas`
                  } else {
                    result += `${space}${numberToText(nextAngka)} belas`
                  }
                  /* Proses Next Angka Sekarang */
                  if (digitCount !== 1) {
                    result += ` ${digitToUnit(digitCount - 1)}`
                  }
                }
              } else {
                /* Angka Puluhan */
                result += `${space}${numberToText(curAngka)} puluh`
              }
            }
          } else {
            /* Angka Satuan Nol */
            if (modGroup === 0 && (Number(angka[i - 2]) !== 0 || Number(angka[i - 1]) !== 0) && digitCount !== 0) {
              result += ` ${digitToUnit(digitCount)}`
            }
          }
        }
  
        if (i <= 1) {
          space = ' '
        }
        i++
      }
  
      return result
    }
  
    if (typeof target !== "string") target = String(target)
    return terbilang(target)
  }

  console.log(`Uang dibayar: Rp ${uang.toLocaleString("id-ID")}`);
  console.log(`Total Bayar : Rp ${harga.toLocaleString("id-ID")}`);
  console.log("\n");
  console.log("=======================");
  console.log("\n");
  jumlahPecahan();
  console.log("\n");
  console.log("=======================");
  console.log("\n");
  console.log(`Kembalian: Rp ${kembalian.toLocaleString("id-ID")}`);
  console.log(`Terbilang: ${angkaTerbilang(kembalian)} rupiah`);
};

hitungUangKembalian(200000, 17630);
