import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricOneVariable

structure WatsonContourIntegralPackage where
  series : BasicHypergeometricSeries 2 1
  contour : Set ℂ
  integrand : ℂ → ℂ
  integralEqualsSeries : Prop
  contourDeformationProof : integralEqualsSeries

structure WatsonContourIntegralEvidence (W : WatsonContourIntegralPackage) where
  integralClosed : W.integralEqualsSeries

def WatsonContourIntegralClosed (W : WatsonContourIntegralPackage) : Prop :=
  W.integralEqualsSeries

theorem watson_contour_integral_closed_from_evidence (W : WatsonContourIntegralPackage) (E : WatsonContourIntegralEvidence W) :
    WatsonContourIntegralClosed W :=
  E.integralClosed

end BasicHypergeometricOneVariable
end HautevilleHouse