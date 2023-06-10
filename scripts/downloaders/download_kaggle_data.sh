USER=$1
DATASET=$2

# Run locally
bash -c "cd data && kaggle datasets download -d $USER/$DATASET && echo 'Unzipping...' && unzip -q -o $DATASET.zip -d $DATASET && rm $DATASET.zip && echo '🚀 Done!'"

# Run in docker
# docker compose exec app bash -c "cd /app/data/ && kaggle datasets download -d $USER/$DATASET && echo 'Unzipping...' && unzip -q -o /app/data/$DATASET.zip -d /app/data/$DATASET && rm /app/data/$DATASET.zip && echo '🚀 Done!'"

