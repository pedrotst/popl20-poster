  Definition Bool_To_Prop (b : bool): Prop :=
    match b with
    | true => True
    | false => False
    end.