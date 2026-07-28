import canonicalLaneMathlib.AdmissibleClass
import QPochhammerPackage

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure BasicHypergeometricSeriesPackage (r s : ℕ) (P : QPochhammerPackage) where
  parameters : List ℝ  -- length r+s+1: a1..ar, b1..bs, z
  seriesTerm : ℕ → ℝ
  seriesSum : ℝ
  convergenceRadius : ℝ
  ratioTestConvergence : Prop
  seriesTermDefined : ∀ n : ℕ, seriesTerm n =
    (∏ i : Finset.range r, (P.q ^ i * P.parameters.get? i).getD 0) *
    (P.q ^ (n : ℕ)).pow (n : ℕ) *
    (∏ j : Finset.range s, 1 / (P.q ^ j * (P.parameters.get? (r + j)).getD 0)) *
    (P.q ^ (n : ℕ)).pow (2 : ℕ)⁻¹
  seriesSumDefined : seriesSum = ∑' n : ℕ, seriesTerm n
  convergenceRadiusDefined : convergenceRadius = 1 / |P.q| ^ (s - r + 1)

structure BasicHypergeometricSeriesEvidence {r s : ℕ} {P : QPochhammerPackage}
  (S : BasicHypergeometricSeriesPackage r s P) where
  seriesTermDefinedClosed : ∀ n : ℕ, S.seriesTerm n =
    (∏ i : Finset.range r, (S.P.q ^ i * S.parameters.get? i).getD 0) *
    (S.P.q ^ (n : ℕ)).pow (n : ℕ) *
    (∏ j : Finset.range s, 1 / (S.P.q ^ j * (S.parameters.get? (r + j)).getD 0)) *
    (S.P.q ^ (n : ℕ)).pow (2 : ℕ)⁻¹
  seriesSumDefinedClosed : S.seriesSum = ∑' n : ℕ, S.seriesTerm n
  convergenceRadiusDefinedClosed : S.convergenceRadius = 1 / |S.P.q| ^ (s - r + 1)
  ratioTestConvergenceClosed : S.ratioTestConvergence

def BasicHypergeometricSeriesClosed {r s : ℕ} {P : QPochhammerPackage}
  (S : BasicHypergeometricSeriesPackage r s P) : Prop :=
  (∀ n : ℕ, S.seriesTerm n =
    (∏ i : Finset.range r, (S.P.q ^ i * S.parameters.get? i).getD 0) *
    (S.P.q ^ (n : ℕ)).pow (n : ℕ) *
    (∏ j : Finset.range s, 1 / (S.P.q ^ j * (S.parameters.get? (r + j)).getD 0)) *
    (S.P.q ^ (n : ℕ)).pow (2 : ℕ)⁻¹) ∧
  (S.seriesSum = ∑' n : ℕ, S.seriesTerm n) ∧
  (S.convergenceRadius = 1 / |S.P.q| ^ (s - r + 1)) ∧
  S.ratioTestConvergence

theorem basic_hypergeometric_series_closed_from_evidence {r s : ℕ} {P : QPochhammerPackage}
  (S : BasicHypergeometricSeriesPackage r s P) (E : BasicHypergeometricSeriesEvidence S) :
  BasicHypergeometricSeriesClosed S := by
  exact And.intro E.seriesTermDefinedClosed
    (And.intro E.seriesSumDefinedClosed
      (And.intro E.convergenceRadiusDefinedClosed E.ratioTestConvergenceClosed))

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
