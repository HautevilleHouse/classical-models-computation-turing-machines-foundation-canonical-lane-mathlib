import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

structure TuringMachine where
  states : Nat
  alphabetSize : Nat
  transitions : Nat → Nat → Nat × Nat × Nat -- (state, symbol) → (newState, newSymbol, direction) direction 0=left,1=right,2=halt
  initialState : Nat
  haltingSet : Set Nat

structure TuringMachineAdmittedObject where
  tm : TuringMachine
  input : List Nat
  timeBound : Nat → Nat -- function from input length to maximum steps
  spaceBound : Nat → Nat

def turingMachineDecidesLanguage (M : TuringMachine) (L : Set (List Nat)) : Prop :=
  ∀ (x : List Nat), (x ∈ L) ↔ (M.run x).halts = true

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse