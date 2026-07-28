import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricOneVariable

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (A.object : BasicHypergeometricSeries 2 1).convergenceCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  (A.object : BasicHypergeometricSeries 2 1).convergenceCondition

end BasicHypergeometricOneVariable
end HautevilleHouse