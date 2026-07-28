import canonicalLaneMathlib.AdmissibleClass
import BasicHypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure TransformationPackage {r s : ℕ} {P : QPochhammerPackage}
  (S : BasicHypergeometricSeriesPackage r s P) where
  heineTransformationFormula : Prop
  jacobiTripleProduct : Prop
  qBinomialTheorem : Prop
  transformationEquality : Prop
  identityDerived : Prop

structure TransformationEvidence {r s : ℕ} {P : QPochhammerPackage}
  {S : BasicHypergeometricSeriesPackage r s P} (T : TransformationPackage S) where
  heineTransformationFormulaClosed : T.heineTransformationFormula
  jacobiTripleProductClosed : T.jacobiTripleProduct
  qBinomialTheoremClosed : T.qBinomialTheorem
  transformationEqualityClosed : T.transformationEquality
  identityDerivedClosed : T.identityDerived

def TransformationClosed {r s : ℕ} {P : QPochhammerPackage}
  {S : BasicHypergeometricSeriesPackage r s P} (T : TransformationPackage S) : Prop :=
  T.heineTransformationFormula ∧ T.jacobiTripleProduct ∧ T.qBinomialTheorem ∧
  T.transformationEquality ∧ T.identityDerived

theorem transformation_closed_from_evidence {r s : ℕ} {P : QPochhammerPackage}
  {S : BasicHypergeometricSeriesPackage r s P} (T : TransformationPackage S)
  (E : TransformationEvidence T) : TransformationClosed T := by
  exact And.intro E.heineTransformationFormulaClosed
    (And.intro E.jacobiTripleProductClosed
      (And.intro E.qBinomialTheoremClosed
        (And.intro E.transformationEqualityClosed E.identityDerivedClosed)))

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
