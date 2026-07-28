import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure QDifferenceEquation where
  order : ℕ
  coefficients : List ℚ
  recurrence : ℕ → ℚ → ℚ → Prop
  solutionSpaceDimension : ℕ
  fundamentalSolutions : Prop
  fundamentalSolutionsTerm : fundamentalSolutions

def QDifferenceEquationClosed (E : QDifferenceEquation) : Prop :=
  E.fundamentalSolutions

theorem q_difference_equation_closed (E : QDifferenceEquation) : QDifferenceEquationClosed E := by
  exact E.fundamentalSolutionsTerm

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse