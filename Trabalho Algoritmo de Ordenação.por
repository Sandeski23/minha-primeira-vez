programa
{

    inclua biblioteca Util --> u
    
    
   
    //Variaveis para o laço de repetição(funcao inicio)
    logico interface = verdadeiro , bubblesort = falso, selectionsort = falso, quicksort = falso

	
	
   	cadeia escolha_interface
	funcao interface_funcao()
   	{
        limpa()
        //
        escreva("TRABALHO DE PROGRAMAÇÃO\n")
        escreva("\n")
        escreva("Escolha um algoritmo de ordenação:\n")
        escreva("1-Bubble Sort            2-Selection Sort\n")
        escreva("3-Quick Sort             4-Sair do programa\n")
        //
        leia(escolha_interface)
        se(escolha_interface == "1")
        {
            interface = falso 
            bubblesort = verdadeiro
        }
        senao se(escolha_interface == "2")
        {
            interface = falso 
            selectionsort = verdadeiro
        }
        senao se(escolha_interface == "3")
        {
            interface = falso 
            quicksort = verdadeiro
        }
        senao se(escolha_interface == "4")
        {
            limpa()
            escreva("Saindo...\n")
            interface = falso 
            auxiliar_enquanto_principal = 0
        }
    }


	
	//parametro = 1:Bubblesort   2:Selectionsort    3:Quicksort
	funcao funcao_algoritmo(inteiro algoritmo)
	{
		cadeia escolha_qtde
		limpa()
		//
		escreva("Insira a quantidade de números a serem ordenados:\n")
		escreva("\n")
		escreva("10 - 20 - 30\n")
		escreva("\n")
		escreva("Digite 1 para voltar\n")
		//
		leia(escolha_qtde)
		//
		//
		//Variavel para auxiliar enquanto
		inteiro auxiliar_enquanto = 1	
		logico verifica_saida = falso
		inteiro auxiliar_enquanto_entrada_numeros = 1
		inteiro tamanho_vetor = 0
		enquanto(auxiliar_enquanto == 1){
			
			se(escolha_qtde == "1"){
				
				se(algoritmo == 1){
					
					interface = verdadeiro
					bubblesort = falso 
					//
					verifica_saida = verdadeiro
					auxiliar_enquanto = 0
					auxiliar_enquanto_entrada_numeros = 0
					
				}
				senao se(algoritmo == 2){
					interface = verdadeiro
					selectionsort = falso 
					//
					verifica_saida = verdadeiro
					auxiliar_enquanto = 0
					auxiliar_enquanto_entrada_numeros = 0
				}
				senao se(algoritmo == 3){
					interface = verdadeiro
					quicksort = falso 
					//verifica_saida = verdadeiro
					verifica_saida = verdadeiro
					auxiliar_enquanto = 0
					auxiliar_enquanto_entrada_numeros = 0
				}
			}
			
			senao se(escolha_qtde == "10"){
				tamanho_vetor = 10
				auxiliar_enquanto = 0
			}
						
			senao se(escolha_qtde == "20"){
				tamanho_vetor = 20
				auxiliar_enquanto = 0
			}
						
			senao se(escolha_qtde == "30"){
				tamanho_vetor = 30
				auxiliar_enquanto = 0
			}
			
			senao{
				
				limpa()
				//
				escreva("A quantidade de números escolhida é invalida! Escolha novamente:\n")
				escreva("\n")
				escreva("10 - 20 - 30\n")
				escreva("\n")
				escreva("Digite 1 para voltar\n")
				//
				leia(escolha_qtde)
			}
		
		}


		
		cadeia escolha_sortear_ou_manual
		inteiro vetor[30]
		
		enquanto(auxiliar_enquanto_entrada_numeros == 1){
			limpa()
			//
			escreva("Escolha uma opção:\n")
			escreva("\n")
			escreva("1-Sortear os números\n")
			escreva("2-Inserir os números manualmente\n")
			escreva("\n")
			escreva("Digite 3 para voltar...\n")
			//
			leia(escolha_sortear_ou_manual)
			
			se(escolha_sortear_ou_manual == "1"){
				
				limpa() 
				//
				para(inteiro i = 0; i < tamanho_vetor; i++){
				    	vetor[i] = u.sorteia(0, 1000)
				}
				//
				escreva("Números sorteados:\n")
				escreva("\n")
				//
				auxiliar_enquanto_entrada_numeros = 0
				
			}
			senao se(escolha_sortear_ou_manual == "2"){
				
				limpa()
				//
				para(inteiro i = 0; i < tamanho_vetor; i++){
					escreva("Insira o número ", i+1, " a ser ordenado:\n")
					leia(vetor[i])
					limpa()
				}
				//
				auxiliar_enquanto_entrada_numeros = 0
				//
				escreva("Números inseridos:\n")
				escreva("\n")
				
			}
			senao se(escolha_sortear_ou_manual == "3"){
				verifica_saida = verdadeiro 
				auxiliar_enquanto_entrada_numeros = 0
				
			}
		}
		
		se(verifica_saida == falso){
			
			//Escreve os números 
			para(inteiro i = 0; i < tamanho_vetor; i++){
		  	 	se(i == 9 ou i == 19 ou i == 29){
		    			se(vetor[i] < 100 e vetor[i] > 9){
		    	 			escreva("0", vetor[i], "\n")
			   		}
			    		senao se(vetor[i] < 10 e vetor[i] >= 0){
			  		 	escreva("0", "0", vetor[i], "\n")
			     	}
			     	senao{
					 	escreva(vetor[i], "\n")
			  		}
		 		}
				senao{
			   	 	se(vetor[i] < 100 e vetor[i] > 9){
			  			escreva("0", vetor[i], " - ")
			 		}
			    		senao se(vetor[i] < 10 e vetor[i] >= 0){
						escreva("0", "0", vetor[i], " - ")
					}
			   	 	senao{
						escreva(vetor[i], " - ")
					}
				}
			    
			}

			escreva("\n")
			escreva("Pressione Enter para ordena-los...\n")
			cadeia a
			leia(a)

			//Bubllesort
			se(algoritmo == 1){
				
				tamanho_vetor = tamanho_vetor - 1
		
				para(inteiro t = tamanho_vetor; t > 0;t--){
					para(inteiro i = 0; i < t ;i++){
						se(vetor[i] > vetor[i+1]){
							inteiro numero_vetor 
							numero_vetor = vetor[i] 	
							vetor[i] = vetor[i+1]
							vetor[i+1] = numero_vetor
						}
		
					}
				}

				tamanho_vetor = tamanho_vetor + 1
			}
			
			//Selectionsort
			se(algoritmo == 2){

				para(inteiro i = 0; i < tamanho_vetor;i++){
					inteiro menor = i
					para(inteiro j = i; j < tamanho_vetor; j++){
						se(vetor[j] < vetor[menor]){
							menor = j
						}
					}
					inteiro copia = vetor[menor]
					vetor[menor] = vetor[i]
					vetor[i] = copia
				}
				
				
			}
			
			//Quicksort
			se(algoritmo == 3){

				quicksort_funcao(vetor, 0, tamanho_vetor -1)


				
			}




			limpa()
			escreva("Números ordenados:\n")
			escreva("\n")
		
			//Escreve os números ordenados 	
			para(inteiro i = 0; i < tamanho_vetor; i++){
				
	 			se(i == 9 ou i == 19 ou i == 29){
					se(vetor[i] < 100 e vetor[i] > 9){
						escreva("0", vetor[i], "\n")
					}
	 				senao se(vetor[i] < 10 e vetor[i] >= 0){
						escreva("0", "0", vetor[i], "\n")
					}
					senao{
						escreva(vetor[i], "\n")
					}
				}
				senao{
					se(vetor[i] < 100 e vetor[i] > 9){
						escreva("0", vetor[i], " - ")
					}
					senao se(vetor[i] < 10 e vetor[i] >= 0){
						escreva("0", "0", vetor[i], " - ")
					}
					senao{
						escreva(vetor[i], " - ")
					}
				}
					    	
			}
			
			escreva("\n")
			escreva("Pressione Enter para voltar...\n")
			leia(a)

			se(algoritmo == 1){
				
				interface = verdadeiro
				bubblesort = falso 	
				
			}
			senao se(algoritmo == 2){
				
				interface = verdadeiro
				selectionsort = falso 
				
			}
			senao se(algoritmo == 3){
				
				interface = verdadeiro
				quicksort = falso 
				
			}
			

		}
	
	}

	//Funçoes para o quicksort.12

	funcao quicksort_funcao(inteiro vetor[], inteiro inicio_vetor, inteiro final)
	{
		inteiro pivo
		se(final > inicio_vetor){
			pivo = particiona(vetor, inicio_vetor, final)
			quicksort_funcao(vetor, inicio_vetor, pivo-1)
			quicksort_funcao(vetor, pivo+1, final)
		}
	}
	funcao inteiro particiona(inteiro vetor[], inteiro inicio_vetor, inteiro final)
	{
		
		
		inteiro esquerda, direita, pivo, auxiliar
		pivo = vetor[inicio_vetor]
		esquerda = inicio_vetor
		direita = final
		enquanto(esquerda < direita){
			enquanto(vetor[esquerda] <= pivo e esquerda < final){
				esquerda++
			}
			enquanto(vetor[direita] > pivo e direita > inicio_vetor){
				direita--
			}
			se(esquerda < direita){
				auxiliar = vetor[esquerda] 
				vetor[esquerda] = vetor[direita]
				vetor[direita] = auxiliar
			}
		
		}
		vetor[inicio_vetor] = vetor[direita]
		vetor[direita] = pivo
		retorne direita	
	}


	
	//Varialvel Do loop da funcao inicio 
    	inteiro auxiliar_enquanto_principal = 1
	funcao inicio()
    	{

        enquanto(auxiliar_enquanto_principal == 1)
        {

        	
        	se(interface == verdadeiro){
            interface_funcao()
        	}

        	se(bubblesort == verdadeiro){   
            funcao_algoritmo(1)
        	}
        	
        	se(selectionsort == verdadeiro){
            funcao_algoritmo(2)
        	}
        	
        	se(quicksort == verdadeiro){
            funcao_algoritmo(3)
        	}
       

        }
    	}

    
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6815; 
 * @DOBRAMENTO-CODIGO = [24, 34, 39, 13, 74, 84, 92, 72, 102, 107, 112, 117, 163, 179, 221, 241, 259, 275, 306, 312, 318, 332, 372];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */