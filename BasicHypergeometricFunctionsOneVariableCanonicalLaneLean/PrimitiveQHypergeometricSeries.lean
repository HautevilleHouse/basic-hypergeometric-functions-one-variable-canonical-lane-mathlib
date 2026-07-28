import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure PrimitiveQShiftedFactorial where
  q : ℚ
  n : ℕ
  value : ℚ
  wellDefined : value ≠ 0

structure PrimitiveQSeriesTerm where
  index : ℕ
  numerator : PrimitiveQShiftedFactorial
  denominator : PrimitiveQShiftedFactorial
  coefficient : ℚ

structure PrimitiveQHypergeometricSeries where
  terms : List PrimitiveQSeriesTerm
  radius : ℚ
  converges : Prop
  analyticContinuation : Prop
  convergenceTerm : converges
  analyticContinuationTerm : analyticContinuation

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse