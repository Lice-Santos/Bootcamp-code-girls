# 🌐 Fundamentos Essenciais da Infraestrutura AWS  

## 📍 Regiões  
As **regiões da AWS** são projetadas para serem isoladas umas das outras, proporcionando **tolerância a falhas** e maior resiliência.  

- Cada região é composta por no mínimo **2 ou mais Zonas de Disponibilidade (AZs)**.  
- São **independentes entre si**, permitindo arquiteturas distribuídas em várias regiões para aumentar a disponibilidade.  

---

## 🗂️ Zonas de Disponibilidade (AZs)  
As **Zonas de Disponibilidade** são formadas por **datacenters fisicamente independentes**, mas **conectados logicamente** através de redes de baixa latência e alta disponibilidade.  

> 🔒 A localização exata dos datacenters **não é divulgada por segurança**.  

---

## 📌 Pontos para escolher uma região  
Ao definir em qual região hospedar sua infraestrutura, considere:  

- ✅ **Compliance** → verifique se a legislação/localização permite armazenar os dados naquela região.  
- ✅ **Disponibilidade de serviços** → nem todos os serviços da AWS estão disponíveis em todas as regiões.  
- ✅ **Custo** → os preços podem variar entre regiões.  
- ✅ **Latência** → quanto mais próxima a região do usuário final, menor o tempo de resposta.  

💡 **Boas práticas**: sempre projete a arquitetura considerando **onde os dados ficarão armazenados** e se os serviços necessários estão **disponíveis na região escolhida**.  

---

## ⚙️ Serviços Gerenciados da AWS  
Os **serviços gerenciados** oferecem **alta escalabilidade** e uma **infraestrutura robusta**, permitindo que empresas foquem em seus negócios sem se preocupar com a gestão detalhada dos recursos.  

🔑 Lembre-se do modelo de **responsabilidade compartilhada**: parte da responsabilidade é da **AWS** e parte é do **cliente**.  

---

## Alguns exemplos de serviços
### 🔎 AWS CloudTrail  
- Registra e monitora **todas as chamadas de API** feitas em sua conta (via Console, SDK, CLI ou serviços AWS).  
- Permite **auditoria, monitoramento e análise de segurança**.  
- Responde a perguntas como: *quem fez o quê, quando e de onde?*  

---

### 📦 AWS Snowball  
- Serviço de **transferência de dados em grande escala**.  
- Ideal quando a conexão de rede não é suficiente para migrar terabytes ou petabytes para a nuvem.  
- A AWS envia um **dispositivo físico seguro** para o cliente, que transfere os dados localmente e depois devolve à AWS para importação na nuvem.  

---

### 💻 Amazon EC2 (Elastic Compute Cloud)  
- Serviço que oferece **servidores virtuais (instâncias)** sob demanda.  
- Permite rodar aplicações de forma flexível, escolhendo sistema operacional, armazenamento, rede e CPU.  
- É a base de muitas arquiteturas na nuvem, substituindo a necessidade de manter **servidores físicos locais**.  

---
