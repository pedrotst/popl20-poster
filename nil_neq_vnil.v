Lemma Vector_nil_neq_List_nil
    : forall A (a: A), vnil ~= nil.
Proof.
refine (fun (A : Type) (a : A) 
        (H : vnil A ~= nil) =>
let H0 : forall x y : Vec A 0, 
            x = y := eq_vnil in
let H1 : nil ~= vnil := JMeq_sym H in
(fun H2 : nil ~= vnil =>
 let v := vnil in
 let T := Vec A 0 in
 match H2 in (JMeq x)
   return ((forall x0 y : B, x0 = y) -> False)
 with
 | JMeq_refl =>
     fun H3 : forall x y : list A, x = y =>
     let H4 : nil = a :: nil :=
       H3 nil (a :: nil) in
     let H5 : False :=
       Logic.eq_ind nil
         @(fun e : list A =>
          match e with
          | nil => True
          | _ :: _ => False
      end) @I (a :: nil) H4 in
     False_ind False H5
 end H0) H1).
 Defined.

