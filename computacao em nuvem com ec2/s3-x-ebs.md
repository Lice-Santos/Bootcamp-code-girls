# Amazon EBS (Elastic Block Store) vs. Amazon S3 (Simple Storage Service)

O **Amazon EBS** e o **Amazon S3** são dois serviços de armazenamento essenciais na AWS, cada um com funções distintas, mas que se complementam.

---

## 🚀 Amazon EBS: Seu disco rígido virtual
O **Amazon EBS** funciona como um **disco rígido de alta performance** conectado a uma instância EC2.  
É ideal para armazenar dados que exigem acesso **rápido e constante**, como:

- Onde o sistema operacional da instância está instalado.  
- Bancos de dados.  
- Aplicações que precisam de **baixa latência**.  

O EBS organiza os dados em **blocos**, permitindo que o sistema operacional o trate como um disco físico, podendo ser **particionado e formatado**.

---

## 💾 Snapshots e a função do S3
Um **snapshot** é um **backup de um volume EBS**.  
Quando você cria um snapshot, a AWS captura o estado do volume e o armazena com segurança no **Amazon S3**.

- O snapshot é **incremental**: salva apenas os blocos alterados desde o último backup.  
- É fundamental para **recuperação de desastres**.  
- Pode ser usado para **clonar volumes** e criar novas instâncias EC2 com os mesmos dados.

---

## 📦 Amazon S3: O armazenamento de objetos
O **Amazon S3** é um serviço de **armazenamento de objetos**, ideal para dados que **não precisam ser acessados como um disco rígido**.  
É altamente **escalável, seguro e versátil**, sendo utilizado para:

- Arquivos e documentos.  
- Backups e snapshots (como os do EBS).  
- Conteúdo de sites estáticos e hospedagem de mídias.  

---

## 📊 Classes de Armazenamento no S3
O S3 oferece diferentes **classes de armazenamento**, permitindo otimizar custos conforme a frequência de acesso aos dados:

- **S3 Standard** → Acesso frequente.  
- **S3 Standard-IA** (Infrequent Access) → Acesso eventual.  
- **S3 Glacier** → Arquivamento de longo prazo, com custo muito menor, mas acesso mais lento.  

---

## 🔄 Gerenciamento do Ciclo de Vida
O S3 permite criar **regras automatizadas** para movimentar dados entre classes de armazenamento.  
Exemplo:  
Um arquivo pode permanecer no **S3 Standard** e, após **90 dias**, ser movido automaticamente para o **S3 Glacier**, reduzindo custos de dados raramente acessados.

---

 
Categorias: https://aws.amazon.com/pt/s3/storage-classes/#topic-6

