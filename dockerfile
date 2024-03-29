# Utiliser une image de base Python officielle
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /mysite

# Copier les fichiers de dépendances et installer les dépendances
COPY requirements.txt /mysite/
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste des fichiers de l'application dans le conteneur
COPY . /mysite/

# Exposer le port sur lequel l'application s'exécute
EXPOSE 8000

# Définir les commandes par défaut
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

