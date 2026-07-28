import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure AnalyticContinuation where
  sourceRegion : ConvergenceCondition
  targetRegion : ConvergenceCondition
  continuationFunction : BasicHypergeometricSeries
  analyticInTarget : Prop
  analyticInTargetTerm : analyticInTarget

structure AnalyticContinuationEvidence (A : AnalyticContinuation) where
  analyticInTargetClosed : A.analyticInTarget

def AnalyticContinuationClosed (A : AnalyticContinuation) : Prop :=
  A.analyticInTarget

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuation) (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A :=
  E.analyticInTargetClosed

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
