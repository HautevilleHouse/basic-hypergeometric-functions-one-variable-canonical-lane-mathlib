import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricOneVariable

structure ConvergencePackage (S : BasicHypergeometricSeries r s) where
  radius : ℝ
  ratioTest : Prop
  absoluteSummability : Prop
  convergenceProof : ratioTest ∧ absoluteSummability

structure ConvergenceEvidence {r s : ℕ} {S : BasicHypergeometricSeries r s} (C : ConvergencePackage S) where
  radiusClosed : C.radius > 0
  ratioTestClosed : C.ratioTest
  absoluteSummabilityClosed : C.absoluteSummability

def ConvergenceClosed {r s : ℕ} {S : BasicHypergeometricSeries r s} (C : ConvergencePackage S) : Prop :=
  C.radius > 0 ∧ C.ratioTest ∧ C.absoluteSummability

theorem convergence_closed_from_evidence {r s : ℕ} {S : BasicHypergeometricSeries r s} (C : ConvergencePackage S) (E : ConvergenceEvidence C) :
    ConvergenceClosed C :=
  And.intro E.radiusClosed (And.intro E.ratioTestClosed E.absoluteSummabilityClosed)

end BasicHypergeometricOneVariable
end HautevilleHouse