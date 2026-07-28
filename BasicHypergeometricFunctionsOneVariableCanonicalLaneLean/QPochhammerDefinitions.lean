import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

/-- The q-Pochhammer symbol (a; q)_n -/
structure QPochhammer where
  a : ℂ
  q : ℂ
  n : ℕ
  value : ℂ
  defined : Prop
  definedTerm : defined

/-- Basic hypergeometric series _r φ_s structure -/
structure BasicHypergeometricSeries where
  r : ℕ
  s : ℕ
  parameters : List ℂ
  base : ℂ
  variable : ℂ
  terms : ℕ → ℂ
  series : ℂ
  converges : Prop
  convergesTerm : converges

/-- The admissible class for basic hypergeometric functions -/
def HypergeometricAdmissibleClass (A : AdmissibleClass) : Prop :=
  BridgeClosed A ∧ GateClosed A

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
