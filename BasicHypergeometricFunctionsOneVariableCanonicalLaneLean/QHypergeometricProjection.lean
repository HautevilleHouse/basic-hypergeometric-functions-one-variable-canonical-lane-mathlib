import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure QHypergeometricState where
  series : PrimitiveQHypergeometricSeries

def qHypergeometricProjection : Projection QHypergeometricState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem q_hypergeometric_projection_idempotent (x : QHypergeometricState) :
    qHypergeometricProjection.toFun (qHypergeometricProjection.toFun x) = qHypergeometricProjection.toFun x := by
  exact qHypergeometricProjection.idempotent x

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse