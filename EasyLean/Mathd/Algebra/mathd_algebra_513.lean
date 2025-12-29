import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

theorem mathd_algebra_513 (a b : ℝ)
    (h₀ : 3 * a + 2 * b = 5)
    (h₁ : a + b = 2) :
    a = 1 ∧ b = 1 := by
  constructor
  · nlinarith [h₀, h₁]
  · nlinarith [h₀, h₁]
