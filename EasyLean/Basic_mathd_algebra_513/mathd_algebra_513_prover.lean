import Mathlib.Data.Nat.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

theorem eq_four (a b c d : Nat) (hab : a = b) (had : a = d) (hac : a = c) : c = b := by
  exact hac.symm.trans hab


theorem mathd_algebra_513_a (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) : a = 1 := by
  linarith [h₀, h₁]


theorem mathd_algebra_513_b (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) : b = 1 := by
  linarith [h₀, h₁]


theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) : a = 1 ∧ b = 1 := by
  constructor
  · exact mathd_algebra_513_a a b h₀ h₁
  · exact mathd_algebra_513_b a b h₀ h₁


