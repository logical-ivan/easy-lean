import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

theorem jocelyn_qiaochu_chen (n : ℕ) : n + 0 = n :=   rfl

theorem mathd_algebra_513: ∀ n : ℕ, n + 0 = n := by
  intro n
  exact jocelyn_qiaochu_chen n


theorem eq_four : ∀ a b c d : Nat, a = b → a = d → a = c → c = b := by
  sorry
