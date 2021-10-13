{-
Uma função que informa se um determinado livro está ou não emprestado
Questao 5 pag. 90 and
-}

type Pessoa = String
type Livro = String
type BancodeDados = [(Pessoa, Livro)]

db :: BancodeDados
db = [("Paulo", "A Mente Nova do Rei"), ("Ana", "O Segredo de Luiza"),
 ("Paulo", "O Pequeno Principe"),("Mauro", "O Capital"),
 ("Francisco", "O Auto da Compadecida"),("Pedro", "A Mente Nova do Rei")]

livroEmprestado :: Livro -> BancodeDados -> Bool
livroEmprestado livroParametro [] = False
livroEmprestado livroParametro ((pessoa,livro):resto) = livro==livroParametro || livroEmprestado livroParametro resto
