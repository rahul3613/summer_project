structure Point1 (α : Type u) where
  x : α 
  y : α
  
inductive Color where
  | red
  | green
  | blue

structure ColorPoint (α : Type u) extends Point1 α where
  c : Color


structure Point (α : Type u) where
  x : α 
  y : α 
  z : α 

structure RGBValue where
  red : Nat
  green : Nat
  blue : Nat

structure RedGreenPoint (α : Type u) extends Point α, RGBValue where
  no_blue : blue = 0

def p : Point Nat := {x := 10, y := 10, z:= 20}

def rgp : RedGreenPoint Nat :=
          {p with red := 200, green := 40, blue := 0, no_blue := rfl}

#reduce rgp

#eval rgp.x
#eval rgp.toPoint.x

#reduce rgp.no_blue

example : rgp.x = 10 := rfl
example : rgp.red = 200 := rfl
