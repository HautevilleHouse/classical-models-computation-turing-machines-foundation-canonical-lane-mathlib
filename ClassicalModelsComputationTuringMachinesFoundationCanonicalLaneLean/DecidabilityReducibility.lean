import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean.TuringMachineDefinition

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

/-!
# Decidability and Reducibility Layer

This module defines decidability and reducibility for languages, forming the
basis for the Church-Turing thesis and the hierarchy of undecidability.
-/

-- A language is a set of strings
abbrev Language : Type := Set (List TapeSymbol)

-- A Turing machine decides a language if it halts on all inputs
def Decides (M : TuringMachine) (L : Language) : Prop := 
  ∀ (x : List TapeSymbol), 
    (M.haltsOn x) ∧ (M.accepts x ↔ x ∈ L)

-- A language is recursively enumerable if some TM accepts it
def RecursivelyEnumerable (L : Language) : Prop :=
  ∃ (M : TuringMachine), ∀ (x : List TapeSymbol), x ∈ L ↔ M.accepts x

-- Many-one reduction
def Reduces (A B : Language) : Prop :=
  ∃ (f : List TapeSymbol → List TapeSymbol), 
    (computable f) ∧ (∀ x, x ∈ A ↔ f x ∈ B)

-- Church-Turing thesis as a formal statement
structure ChurchTuringThesis where
  effectivelyComputable : Language → Prop
  turingComputable : Language → Prop
  equivalence : ∀ L, effectivelyComputable L ↔ turingComputable L

theorem decidable_implies_recognizable (L : Language) (h : Decides M L) : RecursivelyEnumerable L := by
  refine ⟨M, ?_⟩
  intro x
  have hx := h x
  rcases hx with ⟨halt, acc_iff⟩
  exact acc_iff.symm

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse