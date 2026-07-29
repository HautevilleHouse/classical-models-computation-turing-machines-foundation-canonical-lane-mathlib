import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean.ComplexityClasses

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

/-!
# Final Theorem Closure Layer

This module provides the admissible-class closure for the Turing machine foundation,
integrating the bridge and gate lemmas into the constrained theorem closure.
-/

def TuringFoundationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem turing_foundation_endgame (A : AdmissibleClass) : TuringFoundationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse
