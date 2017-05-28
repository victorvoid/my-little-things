type Name = String
type Age = Int
type Language = String
type Pessoa = (Name, Age, Language)

pessoa :: Pessoa
pessoa = ("vic", 20, "rust")

my_fst :: Pessoa -> Name
my_fst (n, a, l) = n