# language: pt
# charset: UTF-8

Funcionalidade: Petstore

  Esquema do Cenário: "CT <ct>" - Cadastrar Pet

    Dado eu acesse a api Petstore e aponte para o endpoint <endpoint>
    Quando eu fizer uma requisição do tipo POST com os dados do pet: <id>, <nome>, <id_cat>, <categoria>, <status>
    Então eu devo receber uma resposta com o código HTTP <codigo>

    Exemplos:
      | ct  | endpoint | id | nome   | id_cat | categoria | status    | codigo |
      | 001 | v2/pet   | 1  | Brutus | 1      | dog       | available | 200    |
      | 002 | v2/pet   | 2  | Pingo  | 1      | dog       | available | 200    |
      | 003 | v2/pet   | 3  | Chaves | 1      | dog       | available | 200    |
      | 004 | v2/pet   | 4  | Fred   | 1      | dog       | available | 200    |
      | 005 | v2/pet   | 5  | Rufus  | 1      | dog       | available | 200    |
      | 006 | v2/pet   | 6  | Kitty  | 2      | cat       | available | 200    |
      | 007 | v2/pet   | 7  | Manga  | 2      | cat       | available | 200    |
      | 008 | v2/pet   | 8  | Freud  | 2      | cat       | available | 200    |
      | 009 | v2/pet   | 9  | Lineu  | 2      | cat       | available | 200    |
      | 010 | v2/pet   | 10 | Cafe   | 2      | cat       | available | 200    |

#  Esquema do Cenário: "CT <ct>" - Cadastrar Usuário
#
#    Dado eu acesse a api Petstore e aponte para o endpoint <endpoint>
#    Quando eu fizer uma requisição do tipo POST com os dados do usuário: <id>, <usuario>, <senha>, <status>
#    Então eu devo receber uma resposta com o código HTTP <codigo>
#
#    Exemplos:
#      | ct  | endpoint | id | usuario        | senha | status | codigo |
#      | 001 | v2/user  | 1  | maria.assuncao | 1234  | 1      | 200    |
#      | 002 | v2/user  | 2  | ricardo.sousa  | 1234  | 1      | 200    |
#      | 003 | v2/user  | 3  | paloma.alves   | 1234  | 1      | 200    |
#      | 004 | v2/user  | 4  | flavio.santos  | 1234  | 1      | 200    |
#      | 005 | v2/user  | 5  | maysa.pontes   | 1234  | 1      | 200    |
#
#  Esquema do Cenário: "CT <ct>" - Fazer venda de pet
#
#    Dado eu acesse a api Petstore e aponte para o endpoint <endpoint>
#    Quando eu fizer uma requisição do tipo POST com os dados da ordem: <id>, <id_pet>, <id_usuario>, <quantidade>, <status>, <completo>
#    Então eu devo receber uma resposta com o código HTTP <codigo>
#
#    Exemplos:
#      | ct  | endpoint       | id | id_pet | id_usuario | quantidade | status    | completo | codigo |
#      | 001 | v2/store/order | 1  | 1      | 1          | 1          | delivered | true     | 200    |
#      | 002 | v2/store/order | 2  | 6      | 1          | 1          | approved  | false    | 200    |
#      | 003 | v2/store/order | 3  | 2      | 2          | 1          | delivered | true     | 200    |
#      | 004 | v2/store/order | 4  | 7      | 2          | 1          | approved  | false    | 200    |
#      | 005 | v2/store/order | 5  | 3      | 3          | 1          | delivered | true     | 200    |
#      | 006 | v2/store/order | 6  | 8      | 3          | 1          | approved  | false    | 200    |
#      | 007 | v2/store/order | 7  | 4      | 4          | 1          | delivered | true     | 200    |
#      | 008 | v2/store/order | 8  | 9      | 4          | 1          | approved  | false    | 200    |
#      | 009 | v2/store/order | 9  | 5      | 5          | 1          | delivered | true     | 200    |
#      | 010 | v2/store/order | 10 | 10     | 5          | 1          | approved  | false    | 200    |



