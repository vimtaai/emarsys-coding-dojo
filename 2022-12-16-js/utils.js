function generateDiagonal(diagonalIndex) {
  if (diagonalIndex === 1) {
    return [1];
  }

  const previousDiagonal = generateDiagonal(diagonalIndex - 1);

  if (diagonalIndex % 2 === 0) {
    return previousDiagonal.map((item) => item + 1);
  } else {
    return [...previousDiagonal, previousDiagonal.at(-1) + 1]
  }
}

function generatePackingOrder(numberOfDiagonals) {
  return [...Array(numberOfDiagonals)].flatMap((_, index) => generateDiagonal(index + 1));
}

module.exports = { generateDiagonal, generatePackingOrder };
