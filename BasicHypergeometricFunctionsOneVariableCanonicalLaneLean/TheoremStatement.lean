import HautevilleHouse.BasicHypergeometricFunctionsOneVariableCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsOneVariableCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "basic-hypergeometric-functions-one-variable-canonical-lane"
    theoremName := "BasicHypergeometricSummationFormula"
    theoremObject := "Heine's q-analogue of Gauss's summation formula"
    classicalBoundary := "classical convergence conditions for |q|<1 and |c/a|<1"
    constrainedStatement := "constrained hypergeometric closure internalized through bridge and gate"
    certificateLane := "constrained"
    carriedRemainder := "classical source boundary remains open"
  }

end BasicHypergeometricFunctionsOneVariableCanonicalLaneLean
end HautevilleHouse