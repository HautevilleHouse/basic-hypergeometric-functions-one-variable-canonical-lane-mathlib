import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure QHypergeometricBridgeConstant where
  name : String
  value : ℚ

def bridgeConstants : List QHypergeometricBridgeConstant := [
  { name := "q", value := 0.5 },
  { name := "a", value := 1.0 },
  { name := "b", value := 2.0 },
  { name := "c", value := 3.0 }
]

def bridgeConstantKeys : List String :=
  bridgeConstants.map (fun c => c.name)

theorem bridge_constant_count_checked : bridgeConstants.length = 4 := by rfl

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse