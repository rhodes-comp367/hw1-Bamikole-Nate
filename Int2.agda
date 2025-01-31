module Int2 where

-- import `plus` & `times` on Nats;
-- use these functions where appropriate below.
open import Nat

data Int : Set where
  -- (+ n) represents positive n.
  + : Nat → Int
  -- (- n) represents negative n.
  - : Nat → Int
  -- 0 can be represented as (+ zero) or (- zero).

-- given i, return i + 1.
isuc : Int → Int
isuc (+ n) = + (suc n)
isuc (- zero) = + (suc zero)
isuc (- (suc n)) = - n

-- given i, return i - 1.
ipred : Int → Int
ipred (+ n)= {! + (suc -n) !}
ipred (- zero) = - (suc zero)
ipred (- n) = - (suc n)

-- given i, return -i.
ineg : Int → Int
ineg (+ n) = {! - (n) !}


-- given i & j, return i + j.
iplus : Int → Int → Int
iplus (+ n) (+ k) = {! + plus(suc m) k !}


-- given i & j, return i - j.
iminus : Int → Int → Int
iminus (+ n) (+ k) = {! plus(suc m) +(-suc(k))  !}

-- given i & j, return i * j.
itimes : Int → Int → Int
itimes (+n) (+k)  = {!  times (suc n) k !}

-- got stuck here as well (itmes, iminus, iplus)