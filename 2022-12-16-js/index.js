const { generatePackingOrder } = require("./utils");

const boxSizes = [2, 6, 10, 14, 18];
const packingOrder = generatePackingOrder(10);

function getCompartment(sleigh, index) {
  if (!sleigh[index]) {
    sleigh[index] = [];
  }

  return sleigh[index];
}

function packBoxInCompartment(presents, compartment) {
  const nextBoxIndex = compartment.length;
  const nextBoxSize = boxSizes[nextBoxIndex];
  const presentsInBox = Math.min(nextBoxSize, presents.count);

  compartment.push(presentsInBox);
  presents.count -= presentsInBox;
}

function packPresents(numberOfPresents) {
  const sleigh = [];
  const presents = { count: numberOfPresents };
  let boxCount = 0;

  while (presents.count > 0) {
    const compartmentIndex = packingOrder[boxCount] - 1;
    const compartment = getCompartment(sleigh, compartmentIndex);

    packBoxInCompartment(presents, compartment);
    boxCount += 1;
  }

  return sleigh;
}

module.exports = { packPresents };
