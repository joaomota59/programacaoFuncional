{-
Uma funcao que informa todas as pessoas que tomaram emprestado um determinado
livro.
base - EPC5 e pag 78 uso de if's
-}

type Pessoa = String
type Livro = String
type BancodeDados = [(Pessoa, Livro)]

db :: BancodeDados
db = [("Paulo", "A Mente Nova do Rei"), ("Ana", "O Segredo de Luiza"),
 ("Paulo", "O Pequeno Principe"),("Mauro", "O Capital"),
 ("Francisco", "O Auto da Compadecida"),("Pedro", "A Mente Nova do Rei")]

pessoasPorLivroString :: Livro -> BancodeDados -> String
pessoasPorLivroString livroParametro [] = ""
pessoasPorLivroString livroParametro ((pessoa,livro):resto) =  (if livroParametro == livro then pessoa++"\n" else "")++pessoasPorLivroString livroParametro resto

pessoasPorLivro :: Livro -> BancodeDados -> IO() -- parametros -> (nomeDoLivro, database)
pessoasPorLivro livroParametro ((pessoa,livro):resto) =  putStr (pessoasPorLivroString livroParametro ((pessoa,livro):resto))