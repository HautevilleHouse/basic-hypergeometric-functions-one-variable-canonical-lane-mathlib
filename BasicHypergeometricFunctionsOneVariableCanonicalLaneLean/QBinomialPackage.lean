import BasicHypergeometricOneVariableCanonicalLaneLean.QPochhammerPackage

namespace HautevilleHouse
namespace BasicHypergeometricOneVariable

structure QBinomialPackage (P : QPochhammerPackage) where
  qBinomialCoefficient : ℕ → ℕ → ℝ
  symmetryProperty : Prop
  qPascalIdentity : Prop
  limitToClassical : Prop

structure QBinomialEvidence {P : QPochhammerPackage} (B : QBinomialPackage P) where
  symmetryPropertyClosed : B.symmetryProperty
  qPascalIdentityClosed : B.qPascalIdentity
  limitToClassicalClosed : B.limitToClassical

def QBinomialClosed {P : QPochhammerPackage} (B : QBinomialPackage P) : Prop :=
  B.symmetryProperty ∧ B.qPascalIdentity ∧ B.limitToClassical

theorem q_binomial_closed_from_evidence {P : QPochhammerPackage}
    (B : QBinomialPackage P) (E : QBinomialEvidence B) : QBinomialClosed B := by
  exact And.intro E.symmetryPropertyClosed
    (And.intro E.qPascalIdentityClosed E.limitToClassicalClosed)

end BasicHypergeometricOneVariable
end HautevilleHouse