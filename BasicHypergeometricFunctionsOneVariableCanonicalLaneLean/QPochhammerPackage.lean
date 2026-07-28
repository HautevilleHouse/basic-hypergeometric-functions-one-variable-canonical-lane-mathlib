import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure QPochhammerPackage where
  q : ℝ
  n : ℕ
  productValue : ℝ
  infiniteProductLimit : ℝ
  qSubAbsLessOne : |q| < 1
  productTerm : ℕ → ℝ
  productTermDefined : ∀ k : ℕ, productTerm k = (1 - q ^ (k + 1 : ℕ))
  productValueDefined : productValue = ∏ k in Finset.range n, productTerm k
  infiniteProductLimitDefined : infiniteProductLimit = ∏' k : ℕ, productTerm k

structure QPochhammerEvidence (P : QPochhammerPackage) where
  qSubAbsLessOneClosed : P.qSubAbsLessOne
  productTermDefinedClosed : ∀ k : ℕ, P.productTerm k = (1 - P.q ^ (k + 1 : ℕ))
  productValueDefinedClosed : P.productValue = ∏ k in Finset.range P.n, P.productTerm k
  infiniteProductLimitDefinedClosed : P.infiniteProductLimit = ∏' k : ℕ, P.productTerm k

def QPochhammerClosed (P : QPochhammerPackage) : Prop :=
  P.qSubAbsLessOne ∧
  (∀ k : ℕ, P.productTerm k = (1 - P.q ^ (k + 1 : ℕ))) ∧
  (P.productValue = ∏ k in Finset.range P.n, P.productTerm k) ∧
  (P.infiniteProductLimit = ∏' k : ℕ, P.productTerm k)

theorem q_pochhammer_closed_from_evidence (P : QPochhammerPackage) (E : QPochhammerEvidence P) : QPochhammerClosed P := by
  exact And.intro E.qSubAbsLessOneClosed
    (And.intro E.productTermDefinedClosed
      (And.intro E.productValueDefinedClosed E.infiniteProductLimitDefinedClosed))

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse
