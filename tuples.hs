func :: (Int, Int) -> (Int, Int) -> (Int, Int)
func (a, b) (c, d) = (a + c, b + d)

names :: (String, String, String)
names = ("victor", "carlos", "aline")

selec_first (x, _, _) = x
selec_sec   (_, y, _) = y
select_thir (_, _, z) = z