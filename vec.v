Inductive Vec {A : Type} : nat -> Type :=
| vnil : Vec 0
| vcons : A -> forall (n : nat),
                Vec n -> Vec (S n).