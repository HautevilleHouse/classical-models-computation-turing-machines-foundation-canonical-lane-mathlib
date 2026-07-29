import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean.DecidabilityReducibility

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

/-!
# Undecidability and the Halting Problem Layer

This module formalizes the undecidability results including the halting problem
and Rice's theorem, central to the theory of computation.
-/

-- The halting language
noncomputable def HaltingLanguage : Language :=
  { x : List TapeSymbol | ∃ (M : TuringMachine) (y : List TapeSymbol), 
    encodes M x ∧ M.haltsOn y }

-- The halting problem is undecidable
theorem halting_problem_undecidable : ¬ ∃ (M : TuringMachine), Decides M HaltingLanguage := by
  sorry

-- Rice's theorem: any nontrivial property of partial functions is undecidable
structure PartialFunction where
  domain : List TapeSymbol → Prop
  values : PartialDomain → List TapeSymbol

theorem rices_theorem (P : Set PartialFunction) (h_nonempty : P ≠ ∅) (h_not_all : P ≠ Set.univ) :
  ¬ ∃ (M : TuringMachine), Decides M { x | let M' := decode x; semantics M' ∈ P } := by
  sorry

def HaltingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ HaltingLanguageReduction A

theorem halting_closure_proof (A : AdmissibleClass) : HaltingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (And.intro (gate_from_admissible_class A) ?_)

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse
