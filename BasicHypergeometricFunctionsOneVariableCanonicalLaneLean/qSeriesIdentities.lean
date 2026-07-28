import BasicHypergeometricOneVariable.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricOneVariable

structure qBinomialTheoremPackage where
  series : BasicHypergeometricSeries 1 0
  product : qPochhammer
  identity : Prop
  proof : identity

structure qGaussSumPackage where
  series : BasicHypergeometricSeries 2 1
  closedForm : qPochhammer
  identity : Prop
  proof : identity

structure qSeriesIdentitiesPackage where
  qBinomial : qBinomialTheoremPackage
  qGauss : qGaussSumPackage
  allIdentitiesClosed : Prop

structure qSeriesIdentitiesEvidence (P : qSeriesIdentitiesPackage) where
  qBinomialClosed : P.qBinomial.identity
  qGaussClosed : P.qGauss.identity
  allIdentitiesClosed : P.allIdentitiesClosed

def qSeriesIdentitiesClosed (P : qSeriesIdentitiesPackage) : Prop :=
  P.qBinomial.identity ∧ P.qGauss.identity ∧ P.allIdentitiesClosed

theorem q_series_identities_closed_from_evidence
    (P : qSeriesIdentitiesPackage) (E : qSeriesIdentitiesEvidence P) :
    qSeriesIdentitiesClosed P := by
  exact And.intro E.qBinomialClosed (And.intro E.qGaussClosed E.allIdentitiesClosed)

end BasicHypergeometricOneVariable
end HautevilleHouse