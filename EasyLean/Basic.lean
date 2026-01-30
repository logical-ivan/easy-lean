import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

theorem eq_four : ∀ a b c d : Nat, a = b → a = d → a = c → c = b := by
  sorry

theorem mathd_algebra_513 (a b : ℝ) (h0 : 3 * a + 2 * b = 5) (h1 : a + b = 2) : a = 1 ∧ b = 1 := by
  constructor
  · linarith [h0, h1]
  · linarith [h0, h1]
