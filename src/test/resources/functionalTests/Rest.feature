# language: pt
# charset: UTF-8

Funcionalidade: Petstore

  Esquema do Cenário: "CT <ct>" - Cadastrar Pet

    Dado eu acesse a api Petstore e aponte para o endpoint v2/pet
    Quando eu fizer uma requisição do tipo POST com os dados do pet: <id>, <nome>, <id_cat>, <categoria>, <status>
    Então eu devo receber uma resposta com o código HTTP <codigo>

    Exemplos:
      | ct   | id | nome   | id_cat | categoria | status    | codigo |
      | 001  | 1  | Brutus | 1      | dog       | available | 400    |
      | 002  | 2  | Pingo  | 1      | dog       | available | 200    |
      | 003  | 3  | Chaves | 1      | dog       | available | 200    |
      | 004  | 4  | Fred   | 1      | dog       | available | 200    |
      | 005  | 5  | Rufus  | 1      | dog       | available | 200    |
      | 006  | 6  | Kitty  | 2      | cat       | available | 200    |
      | 007  | 7  | Manga  | 2      | cat       | available | 200    |
      | 008  | 8  | Freud  | 2      | cat       | available | 200    |
      | 009  | 9  | Lineu  | 2      | cat       | available | 200    |
      | 010  | 10 | Cafe   | 2      | cat       | available | 200    |

  Esquema do Cenário: "CT <ct>" - Cadastrar Usuário

    Dado eu acesse a api Petstore e aponte para o endpoint v2/user
    Quando eu fizer uma requisição do tipo POST com os dados do usuário: <id>, <usuario>, <senha>, <status>
    Então eu devo receber uma resposta com o código HTTP <codigo>

    Exemplos:
      | ct   | id | usuario        | senha | status | codigo |
      | 001   | 1  | maria.assuncao | 1234  | 1      | 200    |
      | 002   | 2  | ricardo.sousa  | 1234  | 1      | 200    |
      | 003   | 3  | paloma.alves   | 1234  | 1      | 200    |
      | 004   | 4  | flavio.santos  | 1234  | 1      | 200    |
      | 005   | 5  | maysa.pontes   | 1234  | 1      | 200    |

  Esquema do Cenário: "CT <ct>" - Fazer venda de pet

    Dado eu acesse a api Petstore e aponte para o endpoint v2/store/order
    Quando eu fizer uma requisição do tipo POST com os dados da ordem: <id>, <id_pet>, <id_usuario>, <quantidade>, <status>, <completo>
    Então eu devo receber uma resposta com o código HTTP <codigo>

    Exemplos:
      | ct | id | id_pet | id_usuario | quantidade | status    | completo | codigo |
      | 001| 1  | 1      | 1          | 1          | delivered | true     | 200    |
      | 002| 2  | 6      | 1          | 1          | approved  | false    | 200    |
      | 003| 3  | 2      | 2          | 1          | delivered | true     | 200    |
      | 004| 4  | 7      | 2          | 1          | approved  | false    | 200    |
      | 005| 5  | 3      | 3          | 1          | delivered | true     | 200    |
      | 006| 6  | 8      | 3          | 1          | approved  | false    | 200    |
      | 007| 7  | 4      | 4          | 1          | delivered | true     | 200    |
      | 008| 8  | 9      | 4          | 1          | approved  | false    | 200    |
      | 009| 9  | 5      | 5          | 1          | delivered | true     | 200    |
      | 010| 10 | 10     | 5          | 1          | approved  | false    | 200    |



