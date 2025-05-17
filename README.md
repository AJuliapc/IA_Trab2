**Aluno (a): Ana Júlia Pereira Corrêa**
____

# Inteligência Artifical - Trabalho 2: Raciocínio Probabilístico

#### Descrição do Problema  
Um sistema de diagnóstico deve ser desenvolvido para um farol de bicicleta movido a dínamo, utilizando uma **rede bayesiana**. As variáveis envolvidas são:  

| Variável | Significado | Valores |
|----------|-------------|---------|
| `Li`     | Luz ligada (Light is on) | t/f |
| `Str`    | Condição da rua (Street condition) | dry, wet, snow_covered |
| `Flw`    | Volante do Dínamo desgastado (Dynamo flywheel worn out) | t/f |
| `R`      | Dínamo deslizante (Dynamo sliding) | t/f |
| `V`      | Dínamo mostra tensão (Voltagem) (Dynamo shows voltage) | t/f |
| `B`      | Lâmpada ok (Light bulb ok) | t/f |
| `K`      | Cabo ok (Cable ok) | t/f |

**Premissas de independência**:  
- As variáveis `Str`, `Flw`, `B`, `K` são independentes aos pares.  
- Os pares `(R, B)`, `(R, K)`, `(V, B)`, `(V, K)` também são independentes.  
- Equações válidas:  

![image](https://github.com/user-attachments/assets/c238e5e7-583f-4f02-8817-97a3056723a6)

---

### Questões do Trabalho  

#### **1ª Questão**  
(a) Desenhe a rede de causalidade entre as variáveis `Str`, `Flw`, `R`, `V`, `B`, `K`, `Li`.  
(b) Insira todas as CPTs (Tabelas de Probabilidade Condicional) faltantes no gráfico.  
(c) Atribua valores plausíveis para as probabilidades (livre escolha).  
(d) Demonstre que a rede **não** contém uma aresta entre `Str` e `Li`.  
(e) Calcule P(V|Str = snow_covered)

#### **2ª Questão**  
Implemente o problema da 1ª questão em **ProbLog** (baseado no [tutorial básico](https://dtai.cs.kuleuven.be/problog/tutorial/basic/02_bayes.html)) e mostre a solução para o item 1ª(e).  
