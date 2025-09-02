#!/bin/bash

# Verifica se foi passado o CSV como argumento
if [ -z "$1" ]; then
  echo "Uso: $0 usuarios.csv"
  exit 1
fi

CSV_FILE=$1
LOG_FILE="usuarios_criados.log"

# Verifica se o arquivo existe
if [ ! -f "$CSV_FILE" ]; then
  echo "Arquivo $CSV_FILE não encontrado!"
  exit 1
fi

echo "=== Iniciando criação de usuários IAM ($(date)) ===" > "$LOG_FILE"

# Lê o CSV linha a linha, ignorando o cabeçalho
tail -n +2 "$CSV_FILE" | while IFS=';' read -r usuario grupo senha
do
  echo "🔹 Criando usuário: $usuario (Grupo: $grupo)"

  # Tenta criar o usuário
  if aws iam create-user --user-name "$usuario" 2>>"$LOG_FILE"; then
    echo "Usuário $usuario criado com sucesso." >> "$LOG_FILE"
  else
    echo "⚠️ Usuário $usuario já existe ou ocorreu um erro." >> "$LOG_FILE"
  fi

  # Tenta adicionar ao grupo
  if aws iam add-user-to-group --user-name "$usuario" --group-name "$grupo" 2>>"$LOG_FILE"; then
    echo "Adicionado ao grupo $grupo." >> "$LOG_FILE"
  else
    echo "⚠️ Falha ao adicionar $usuario ao grupo $grupo." >> "$LOG_FILE"
  fi

  # Tenta criar login profile
  if aws iam create-login-profile \
      --user-name "$usuario" \
      --password "$senha" \
      --password-reset-required 2>>"$LOG_FILE"; then
    echo "Senha configurada para $usuario." >> "$LOG_FILE"
  else
    echo "⚠️ Falha ao criar senha para $usuario (já existe ou erro)." >> "$LOG_FILE"
  fi

  echo "---" >> "$LOG_FILE"

done

echo "=== Finalizado em $(date) ===" >> "$LOG_FILE"
