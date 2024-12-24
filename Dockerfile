# Базовый образ Python
FROM python:3.10-slim

# Установка зависимостей, включая Jupyter
RUN pip install --no-cache-dir numpy jupyter

# Копирование кода в контейнер
WORKDIR /app
COPY gradient_descent.ipynb /app/

# Команда для запуска Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]



