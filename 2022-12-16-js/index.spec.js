const { packPresents } = require(".");

describe("packPresent", () => {
  const testCases = [
    { numberOfPresents: 0, expectedPacking: [] },
    { numberOfPresents: 1, expectedPacking: [[1]] },
    { numberOfPresents: 4, expectedPacking: [[2], [2]] },
    { numberOfPresents: 5, expectedPacking: [[2], [2, 1]] },
    { numberOfPresents: 10, expectedPacking: [[2], [2, 6]] },
    { numberOfPresents: 18, expectedPacking: [[2], [2, 6], [2, 6]] },
    { numberOfPresents: 20, expectedPacking: [[2], [2, 6], [2, 6], [2]] },
    { numberOfPresents: 30, expectedPacking: [[2], [2, 6], [2, 6, 10], [2]] },
    { numberOfPresents: 36, expectedPacking: [[2], [2, 6], [2, 6, 10], [2, 6]] },
    { numberOfPresents: 38, expectedPacking: [[2], [2, 6], [2, 6, 10], [2, 6], [2]] },
    { numberOfPresents: 48, expectedPacking: [[2], [2, 6], [2, 6, 10], [2, 6, 10], [2]] },
    { numberOfPresents: 54, expectedPacking: [[2], [2, 6], [2, 6, 10], [2, 6, 10], [2, 6]] },
    { numberOfPresents: 56, expectedPacking: [[2], [2, 6], [2, 6, 10], [2, 6, 10], [2, 6], [2]] },
    { numberOfPresents: 118, expectedPacking: [[2], [2, 6], [2, 6, 10], [2, 6, 10, 14], [2, 6, 10, 14], [2, 6, 10], [2, 6]] },
  ];

  testCases.forEach(({ numberOfPresents, expectedPacking }) => {
    it(`${numberOfPresents} = ${JSON.stringify(expectedPacking)}`, () => {
      const packing = packPresents(numberOfPresents);
      expect(packing).toStrictEqual(expectedPacking);
    });
  });
});
