const { generateDiagonal } = require("./utils");

describe("generateDiagonal", () => {
  const testCases = [
    { diagonalIndex: 1, expectedDiagonal: [1] },
    { diagonalIndex: 2, expectedDiagonal: [2] },
    { diagonalIndex: 3, expectedDiagonal: [2, 3] },
    { diagonalIndex: 4, expectedDiagonal: [3, 4] },
    { diagonalIndex: 5, expectedDiagonal: [3, 4, 5] },
    { diagonalIndex: 6, expectedDiagonal: [4, 5, 6] },
    { diagonalIndex: 7, expectedDiagonal: [4, 5, 6, 7] },
    { diagonalIndex: 8, expectedDiagonal: [5, 6, 7, 8] },
    { diagonalIndex: 9, expectedDiagonal: [5, 6, 7, 8, 9] },
    { diagonalIndex: 10, expectedDiagonal: [6, 7, 8, 9, 10] },
  ];

  testCases.forEach(({ diagonalIndex, expectedDiagonal }) => {
    it(`${diagonalIndex} = ${JSON.stringify(expectedDiagonal)}`, () => {
      const diagonal = generateDiagonal(diagonalIndex);
      expect(diagonal).toStrictEqual(expectedDiagonal);
    });
  });
});
