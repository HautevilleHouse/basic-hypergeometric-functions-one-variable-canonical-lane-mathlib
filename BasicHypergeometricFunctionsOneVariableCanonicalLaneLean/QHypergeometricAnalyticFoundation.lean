import canonicalLaneMathlib.AdmissibleClass
import QHypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure QHypergeometricAnalyticFoundation where
  series : PrimitiveQHypergeometricSeries
  seriesEvidence : series.converges ∧ series.analyticContinuation
  transformation : Type u
  transformationExists : Prop
  transformationTerm : transformationExists

def QHypergeometricAnalyticFoundationClosed (A : QHypergeometricAnalyticFoundation) : Prop :=
  A.series.converges ∧ A.series.analyticContinuation ∧ A.transformationExists

theorem q_hypergeometric_analytic_foundation_closed (A : QHypergeometricAnalyticFoundation) :
    QHypergeometricAnalyticFoundationClosed A := by
  exact And.intro A.series.convergenceTerm (And.intro A.series.analyticContinuationTerm A.transformationTerm)

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse