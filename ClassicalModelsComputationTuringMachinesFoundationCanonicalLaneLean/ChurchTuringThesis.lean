import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

structure PartialRecursiveFunction where
  arity : Nat
  definingEquations : List (Nat → Option Nat)

inductive ComputableFunction : Type where
  | turingComputable (f : Nat → Option Nat) (M : TuringMachine) : ComputableFunction
  | partialRecursive (f : PartialRecursiveFunction) : ComputableFunction
  | lambdaDefinable (f : Nat → Option Nat) : ComputableFunction

def churchTuringAdmissible (f : Nat → Option Nat) : Prop :=
  (∃ M : TuringMachine, M.computes f) ∧ (∃ g : PartialRecursiveFunction, g.defines f) ∧ (∃ h : LambdaTerm, h.reducesTo f)

theorem church_turing_thesis_admissible (f : Nat → Option Nat) (h : ComputableFunction f) :
    churchTuringAdmissible f := by
  sorry

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse