import canonicalLaneMathlib.AdmissibleClass
import TransformationClosure

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

def ConstrainedBasicHypergeometricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_basic_hypergeometric_endgame (A : AdmissibleClass) :
    ConstrainedBasicHypergeometricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
