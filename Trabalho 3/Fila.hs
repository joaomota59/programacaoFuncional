{-
Apresentar aplicação de tipos abstrato em Haskel, escolhido: Fila
Referencia pag 183
-}

module Fila (Fila, insereFila, retiraFila, front, filaVazia, novaFila)
 where
  insereFila :: t -> Fila t -> Fila t
  retiraFila :: Fila t -> Fila t
  front :: Fila t -> t
  filaVazia :: Fila t -> Bool
  novaFila :: Fila t

  data Fila t = Fila [t] --Construtor

  filaRU = Fila ["Joao","Pedro","Gustavo","Hugo"]--Fila inicial

  insereFila x (Fila q) = Fila (q ++ [x]) --insere no final da lista / ex para usar: insereFila "nome" filaRU

  retiraFila (Fila (x : xs)) = Fila xs --retira o elemento da cabeca da lista
  retiraFila _ = error "Fila de espera vazia"

  front (Fila (x : _)) = x --o front eh o elemento a ser retirado
  front _ = error "Fila de espera vazia"

  filaVazia (Fila [ ]) = True -- Retorna se uma Fila está ou não vazia
  filaVazia _ = False

  novaFila = (Fila [ ])-- Retorna uma Fila Vazia


  instance (Show t) => Show (Fila t)
   where
    show (Fila [ ]) = ""
    show (Fila (x : xs)) = "<" ++ (show x) ++ (show (Fila xs))