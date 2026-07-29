import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  turingConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "classical-models-computation-turing-machines-foundation-canonical-lane",
  theoremName := "ChurchTuringThesisClosure",
  theoremObject := "The Church-Turing thesis as admissible-class closure for classical models of computation.",
  classicalBoundary := "The unrestricted classical Turing machine model remains open; closure is constructed for the admissible class of polynomial-time languages.",
  turingConstrainedStatement := "turing-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "turing_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse