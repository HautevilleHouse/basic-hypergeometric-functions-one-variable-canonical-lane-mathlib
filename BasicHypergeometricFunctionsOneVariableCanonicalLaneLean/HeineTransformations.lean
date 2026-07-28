import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure HeineTransformation where
  originalSeries : BasicHypergeometricSeries
  transformedSeries : BasicHypergeometricSeries
  transformationValid : Prop
  transformationValidTerm : transformationValid

structure HeineEvidence (H : HeineTransformation) where
  transformationValidClosed : H.transformationValid

def HeineClosed (H : HeineTransformation) : Prop :=
  H.transformationValid

theorem heine_closed_from_evidence (H : HeineTransformation) (E : HeineEvidence H) : HeineClosed H :=
  E.transformationValidClosed

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
