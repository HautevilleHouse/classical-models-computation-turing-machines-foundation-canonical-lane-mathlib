import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

structure PolynomialTimeReduction (A B : Set (List Nat)) where
  f : List Nat → List Nat
  computableInPoly : (λ x, f x) ∈ P
  equivalence : ∀ x, x ∈ A ↔ f x ∈ B

def isNPComplete (L : Set (List Nat)) : Prop :=
  L ∈ NP ∧ ∀ A ∈ NP, PolynomialTimeReduction A L

def cookLevinAdmissible (L : Set (List Nat)) : Prop :=
  L ∈ NP → PolynomialTimeReduction L SAT

theorem cook_levin_admissible_closed (L : Set (List Nat)) (h : isNPComplete L) :
    cookLevinAdmissible L := by
  intro hNP
  have hSAT_NP : SAT ∈ NP := by
    refine ⟨?_, ?_⟩
    · exact Turing.Machine.NP.verifier SAT
    · exact Turing.Machine.NP.verifier_poly SAT
  exact h.2 SAT hSAT_NP

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse