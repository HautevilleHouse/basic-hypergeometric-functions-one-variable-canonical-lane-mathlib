import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure ConvergenceCondition where
  absBaseLessOne : Prop
  absVariableLessOne : Prop
  noDenominatorZero : Prop
  termRatioFinite : Prop
  absoluteConvergence : Prop

structure ConvergenceEvidence (C : ConvergenceCondition) where
  absBaseLessOneClosed : C.absBaseLessOne
  absVariableLessOneClosed : C.absVariableLessOne
  noDenominatorZeroClosed : C.noDenominatorZero
  termRatioFiniteClosed : C.termRatioFinite
  absoluteConvergenceClosed : C.absoluteConvergence

def ConvergenceClosed (C : ConvergenceCondition) : Prop :=
  C.absBaseLessOne ∧ C.absVariableLessOne ∧ C.noDenominatorZero ∧
  C.termRatioFinite ∧ C.absoluteConvergence

theorem convergence_closed_from_evidence (C : ConvergenceCondition) (E : ConvergenceEvidence C) : ConvergenceClosed C :=
  And.intro E.absBaseLessOneClosed (And.intro E.absVariableLessOneClosed (And.intro E.noDenominatorZeroClosed (And.intro E.termRatioFiniteClosed E.absoluteConvergenceClosed)))

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
