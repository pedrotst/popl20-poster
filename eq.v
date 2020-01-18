Inductive eq {A : Type} (x : A) : A -> Prop :=
    eq_refl : eq x x.
