# Imagem base com Python
FROM python:3.11-slim

# Diretório de trabalho
WORKDIR /app

# Copiar requirements e instalar
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copiar o restante do código
COPY . /app

# Expor porta se você quiser rodar uma API (opcional)
EXPOSE 8000

# Comando padrão
CMD ["python", "src/main.py"]