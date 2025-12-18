import Mathlib

-- Solves a 2x2 linear system with integer coefficients.
theorem mathd_algebra_513
    (a b : Real) (h0 : 3 * a + 2 * b = 5) (h1 : a + b = 2) : a = 1 ∧ b = 1 := by
  constructor <;> linarith [h0, h1]
