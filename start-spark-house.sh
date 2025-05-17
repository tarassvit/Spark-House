#!/bin/bash

REPO_URL="https://github.com/tarassvit/Spark-House.git"
DIR_NAME="Spark-House"

echo "Клонуємо репозиторій..."
if [ -d "$DIR_NAME" ]; then
  echo "Папка $DIR_NAME вже існує. Оновлюємо..."
  cd "$DIR_NAME" && git pull origin main || exit 1
else
  git clone "$REPO_URL" || exit 1
  cd "$DIR_NAME" || exit 1
fi

echo "Встановлюємо залежності..."
npm install || exit 1

echo "Запускаємо проєкт..."
npm run dev
 
