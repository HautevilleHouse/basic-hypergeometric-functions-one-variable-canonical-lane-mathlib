import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricOneVariable

structure HeineTransformationPackage where
  series : BasicHypergeometricSeries 2 1
  transformedSeries : BasicHypergeometricSeries 2 1
  transformationEquality : Prop
  transformationProof : transformationEquality

structure HeineTransformationEvidence (H : HeineTransformationPackage) where
  equalityClosed : H.transformationEquality

def HeineTransformationClosed (H : HeineTransformationPackage) : Prop :=
  H.transformationEquality

theorem heine_transformation_closed_from_evidence (H : HeineTransformationPackage) (E : HeineTransformationEvidence H) :
    HeineTransformationClosed H :=
  E.equalityClosed

end BasicHypergeometricOneVariable
end HautevilleHouse