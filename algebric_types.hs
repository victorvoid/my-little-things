type Programmer = String
type Name = String
type Language = String
type University = String
type Student = String
data Pessoa = Programmer Name Language | Student Name University

programmer = Programmer "Rick" "Rust"
student = Student "Rick"

is_programmer :: Pessoa -> Bool
is_programmer (Programmer _ _) = True
is_programmer _ = False

is_student :: Pessoa -> Bool
is_student (Student _ _) = True
is_student _ = False
