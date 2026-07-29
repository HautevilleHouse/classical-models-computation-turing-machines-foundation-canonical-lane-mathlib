import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

/-!
# Turing Machine Definition Layer

This module defines the classical Turing machine model used as the foundation
for computability and complexity theory. The Turing machine is the canonical
admissible object for classical models of computation.
-/

-- Tape alphabet: blank, zero, one
inductive TapeSymbol where
  | blank
  | zero
  | one
deriving Repr, DecidableEq, BEq

-- Finite set of states
structure TMState where
  label : String
  start : Bool
  accept : Bool
  reject : Bool
deriving Repr, DecidableEq

-- Transition direction
ductive Direction where
  | left
  | right
  | stay
deriving Repr, DecidableEq

-- Transition function entry
structure Transition where
  fromState : TMState
  readSymbol : TapeSymbol
  toState : TMState
  writeSymbol : TapeSymbol
  move : Direction
deriving Repr, DecidableEq

-- The Turing machine structure
structure TuringMachine where
  states : List TMState
  alphabet : List TapeSymbol
  transitions : List Transition
  startState : TMState
  acceptState : TMState
  rejectState : TMState
  valid : Prop

definitionalAxiom : Prop := True

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse
