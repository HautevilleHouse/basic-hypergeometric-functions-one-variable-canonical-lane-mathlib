import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricOneVariable

structure AdmissibleClass where
  object : HypergeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HypergeometricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BasicHypergeometricOneVariable
end HautevilleHouse