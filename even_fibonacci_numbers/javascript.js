function evenFibLessThan4Mil() {
  const a = [1, 2]
  const addLastTwoElements = array => array.slice(-2).reduce((a, b) => a+b)

  while (addLastTwoElements(a) < 4000000) {
    a.push(addLastTwoElements(a))
  }
  return a.filter(n => n % 2 === 0).reduce((a, b) => a+b)
}