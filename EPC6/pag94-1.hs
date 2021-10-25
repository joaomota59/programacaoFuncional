{-
1. Re-implemente as funções de atualização do Banco de Dados para a Biblioteca, feitas na
seção 4.3, usando compreensão de listas, em vez de recursão explícita.
-}

type PalavraChave = String
type Pessoa = String
type Livro = String
type DataVencimento = String
type BancodeDados = [(Pessoa, Livro)]
type LivrosPalavrasChaves = [(Pessoa,Livro,[PalavraChave])]
type LivrosDatas = [(Pessoa,Livro,DataVencimento)]

db :: BancodeDados
db = [("Paulo", "A Mente Nova do Rei"),("Paulo", "Matrix"), ("Ana", "O Segredo de Luiza"),
 ("Paulo", "O Pequeno Principe"),("Mauro", "O Capital"),
 ("Francisco", "O Auto da Compadecida"),("Pedro", "A Mente Nova do Rei")]

-- Uma funcao que informa os livros que uma determinada pessoa tomou emprestado.
livrosEmprestados :: BancodeDados -> Pessoa -> [Livro]
livrosEmprestados db fulano = [liv | (pes, liv) <- db, pes == fulano]

--Uma funcao que informa todas as pessoas que tomaram emprestado um determinado livro.
pessoasPorLivroString  :: BancodeDados -> Livro -> [Pessoa]
pessoasPorLivroString  db livro = [pes | (pes, liv) <- db, liv == livro]

--Uma funcao que informa se um determinado livro esta ou nao emprestado.
livroEmprestadoAux :: BancodeDados -> Livro -> [Bool]
livroEmprestadoAux db livro = [liv == livro | (pes, liv) <- db]

livroEmprestado :: BancodeDados -> Livro -> Bool
livroEmprestado db livro = or (livroEmprestadoAux db livro)

--Uma funcao que informa a quantidade de livros que uma determinada pessoa tomou emprestado.
quantEmprestadoAux :: BancodeDados -> Pessoa -> [Int]
quantEmprestadoAux db fulano = [1 | (pes, liv) <- db, pes == fulano]

quantEmprestado :: BancodeDados -> Pessoa -> Int
quantEmprestado db fulano = sum (quantEmprestadoAux db fulano)

--Uma funcao que atualiza a base de dados, quando um livro é emprestado a alguem.
tomaEmprestado :: BancodeDados -> Pessoa -> Livro -> BancodeDados
tomaEmprestado db fulano titulo = (fulano, titulo) : db

-- Uma funcao que atualiza a base de dados quando um livro é devolvido.
devolveLivro :: BancodeDados -> Pessoa -> Livro -> BancodeDados
devolveLivro db fulano livro = [(pes,liv) | (pes, liv) <- db, pes /= fulano || livro /= liv] 

-- Exista um numero maximo de livros que uma pessoa possa tomar emprestado,
tomaEmprestadoMaxAux :: BancodeDados -> Pessoa -> [Int]
tomaEmprestadoMaxAux db fulano = [1 | (pes, liv) <- db, pes == fulano] 

tomaEmprestadoMax :: BancodeDados -> Pessoa -> Livro -> BancodeDados -- 3 foi definido como a quantidade maxima que o usuario pode pegar emprestado
tomaEmprestadoMax db fulano livro = if (sum (tomaEmprestadoMaxAux db fulano) < 3) then (fulano, livro) : db else db

--Exista uma lista de palavras-chave associadas a cada livro, de forma que cada livro possa ser encontrado atraves das palavras-chave a ele associadas
dbComChaves :: LivrosPalavrasChaves
dbComChaves = [
 ("Paulo","A Mente Nova do Rei",["rei","mente nova","castelo","aventura","cerebro","mente", "inteligência artificial", "logica nebulosa"]),
 ("Ana","Matrix",["mtx","acao","filme"]),
 ("Joaquim","O Segredo de Luiza",["luiza","segredo","comedia"]),
 ("Pedro","O Pequeno Principe",["literatura infantil", "fabula", "novela", "ficcao especulativa"]),
 ("Joao","O Capital",["marxismo","economia"]),
 ("Lucas","O Auto da Compadecida",["cinema", "filme", "adaptações de obras literárias","compadecida"])
 ]

buscarLivroPorPalavraChave :: LivrosPalavrasChaves -> PalavraChave -> [Livro]
buscarLivroPorPalavraChave livros pChave = [livro | (fulano,livro,palavrasChave) <- livros, or [pChave==chave | chave <- palavrasChave]]


--Existam datas associadas aos emprestimos, para poder detectar os livros com datas de emprestimos vencidas.
dbComDatas :: LivrosDatas
dbComDatas = [
 ("Paulo","A Mente Nova do Rei","2021-10-24"),
 ("Ana","Matrix","2021-10-12"),
 ("Joaquim","O Segredo de Luiza","2021-10-03"),
 ("Pedro","O Pequeno Principe","2021-10-24"),
 ("Joao","O Capital","2021-10-11"),
 ("Lucas","O Auto da Compadecida","2021-10-17"),
 ("Pedro", "A Mente Nova do Rei","2021-10-10")
 ]

livroEmprestadoPorVencimento :: LivrosDatas -> DataVencimento -> [(Pessoa,Livro)]
livroEmprestadoPorVencimento livros dVencimento = [(fulano,livro) | (fulano,livro,dataH) <- livros, dataH < dVencimento]