import Mathlib

namespace EasyLean
namespace Basic

theorem eq_four : ∀ a b c d : Nat, a = b → a = d → a = c → c = b := by
  intro a b c d h1 h2 h3
  exact h3.symm.trans h1

end Basic
end EasyLean
