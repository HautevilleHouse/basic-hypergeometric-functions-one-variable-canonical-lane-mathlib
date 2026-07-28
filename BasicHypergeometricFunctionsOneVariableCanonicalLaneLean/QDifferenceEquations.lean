import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure QDifferenceEquation where
  series : BasicHypergeometricSeries
  equation : Prop
  order : ℕ
  regularSingularity : Prop
  equationTerm : equation
  regularSingularityTerm : regularSingularity

structure QDifferenceEvidence (D : QDifferenceEquation) where
  equationClosed : D.equation
  regularSingularityClosed : D.regularSingularity

def QDifferenceClosed (D : QDifferenceEquation) : Prop :=
  D.equation ∧ D.regularSingularity

theorem q_difference_closed_from_evidence (D : QDifferenceEquation) (E : QDifferenceEvidence D) : QDifferenceClosed D :=
  And.intro E.equationClosed E.regularSingularityClosed

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
