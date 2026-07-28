import BasicHypergeometricOneVariableCanonicalLaneLean.QPochhammerPackage

namespace HautevilleHouse
namespace BasicHypergeometricOneVariable

structure QHypergeometricSeriesPackage (P : QPochhammerPackage) where
  seriesTerm : ℕ → ℝ
  sumFormula : Prop
  radiusOfConvergence : Prop
  transformationIdentity : Prop

structure QHypergeometricSeriesEvidence {P : QPochhammerPackage}
    (S : QHypergeometricSeriesPackage P) where
  sumFormulaClosed : S.sumFormula
  radiusOfConvergenceClosed : S.radiusOfConvergence
  transformationIdentityClosed : S.transformationIdentity

def QHypergeometricSeriesClosed {P : QPochhammerPackage}
    (S : QHypergeometricSeriesPackage P) : Prop :=
  S.sumFormula ∧ S.radiusOfConvergence ∧ S.transformationIdentity

theorem q_hypergeometric_series_closed_from_evidence
    {P : QPochhammerPackage} (S : QHypergeometricSeriesPackage P)
    (E : QHypergeometricSeriesEvidence S) : QHypergeometricSeriesClosed S := by
  exact And.intro E.sumFormulaClosed
    (And.intro E.radiusOfConvergenceClosed E.transformationIdentityClosed)

end BasicHypergeometricOneVariable
end HautevilleHouse