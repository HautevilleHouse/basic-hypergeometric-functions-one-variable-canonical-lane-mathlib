import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricOneVariable

structure qPochhammer where
  q : Type u
  a : Type u
  n : Nat
  value : Prop

structure BasicHypergeometricSeries (r s : Nat) where
  parameters : List (Type u)
  variable : Type u
  q : Type u
  sum : Prop
  radiusConvergence : Prop

structure BasicHypergeometricAdmittedObject where
  series : BasicHypergeometricSeries 2 1
  transformationClosed : Prop
  summationClosed : Prop

end BasicHypergeometricOneVariable
end HautevilleHouse