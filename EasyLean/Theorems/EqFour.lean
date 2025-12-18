import Mathlib

theorem eq_four (a b c d : Nat) (hab : a = b) (had : a = d) (hac : a = c) : c = b := by
  exact hac.symm.trans hab
