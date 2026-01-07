import Mathlib
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

theorem eq_four : ∀ a b c d : Nat, a = b → a = d → a = c → c = b := by
  sorry

theorem mathd_algebra_513_a (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) : a = 1 := by
  linarith [h₀, h₁]

theorem mathd_algebra_513_b (a b : ℝ) (h₁ : a + b = 2) (ha : a = 1) : b = 1 := by
  linarith [h₁, ha]

theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) :
    a = 1 ∧ b = 1 := by
  have ha : a = 1 := mathd_algebra_513_a a b h₀ h₁
  have hb : b = 1 := mathd_algebra_513_b a b h₁ ha
  exact ⟨ha, hb⟩
