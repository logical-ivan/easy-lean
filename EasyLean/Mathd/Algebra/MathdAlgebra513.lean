import Mathlib

theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) : a = 1 ∧ b = 1 := by
  have ha_sub : a = 2 - b := (eq_sub_iff_add_eq).mpr h₁
  have h2 : 3 * (2 - b) + 2 * b = 5 := by
    simpa [ha_sub] using h₀
  have h3 : 6 - b = 5 := by
    have h2' := h2
    ring_nf at h2'
    simpa using h2'
  have hb : b = 1 := by
    linarith [h3]
  have ha : a = 1 := by
    have : a + 1 = 2 := by simpa [hb] using h₁
    linarith
  exact ⟨ha, hb⟩
