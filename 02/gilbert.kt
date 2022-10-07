fun getNearestMultiple(value: Int, multipleOf: Int): Collection<Int> {
  val moduloResult = value.mod(multipleOf)

  if (moduloResult == 0) {
    return listOf(value)
  }

  return listOf(value + (multipleOf - moduloResult), value - moduloResult)
}
