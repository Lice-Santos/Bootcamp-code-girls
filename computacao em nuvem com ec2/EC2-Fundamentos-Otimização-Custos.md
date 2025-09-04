# Amazon EC2: Fundamentos e Otimização de Custos

O **Amazon EC2 (Elastic Compute Cloud)** é a base da computação em nuvem da AWS. Ele fornece servidores virtuais, conhecidos como **instâncias**, que você pode usar para rodar aplicações, sites e muito mais.

Trata-se de um serviço **IaaS (Infraestrutura como Serviço)**. Isso significa que a AWS é responsável por toda a infraestrutura física, mas você é responsável pelo que acontece dentro da sua máquina virtual.

A escolha da instância certa é crucial para otimizar desempenho e evitar gastos desnecessários.

---

### Tipos de Instâncias e Custos

As instâncias EC2 são divididas em **famílias** (como `t`, `m`, `c`, etc.), cada uma otimizada para um tipo de tarefa. A AWS oferece diferentes modelos de pagamento para se adequar a cada necessidade:

* **Sob Demanda:** Pague por hora de uso. Ideal para testes, aplicações com carga de trabalho irregular e projetos de curto prazo.
* **Instâncias Reservadas:** Comprometa-se a usar uma instância por um ou três anos e obtenha um grande desconto. Perfeito para cargas de trabalho estáveis e de longo prazo.
* **Instâncias Spot:** Use a capacidade ociosa da AWS com descontos enormes. A única desvantagem é que a AWS pode encerrar a instância a qualquer momento, então use-as apenas para workloads flexíveis.

---

### Otimização de Recursos

Gerenciar recursos de forma eficiente na nuvem é sinônimo de economia. Aqui estão algumas práticas essenciais:

* **Desligue o que não usa:** Parar instâncias que não estão em uso economiza dinheiro. Você pode automatizar esse processo para evitar esquecimentos.
* **Remova recursos ociosos:** Exclua instâncias, volumes ou outros recursos que não estão sendo utilizados.
* **Escalabilidade:** Adapte a capacidade dos seus servidores de acordo com a demanda.
    * **Escala Vertical:** Aumente ou diminua os recursos de uma única instância (por exemplo, adicione mais CPU ou RAM).
    * **Escala Horizontal:** Adicione ou remova mais instâncias (máquinas) para distribuir a carga de trabalho.

Ter uma visão clara desses conceitos demonstra domínio sobre a plataforma AWS e te capacita a tomar decisões inteligentes e econômicas em qualquer projeto.
