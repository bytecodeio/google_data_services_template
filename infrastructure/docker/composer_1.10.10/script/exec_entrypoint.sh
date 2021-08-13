export POSTGRES_HOST="postgres"
export POSTGRES_PORT="5432"
export POSTGRES_USER="airflow"
export POSTGRES_PASSWORD="airflow"
export POSTGRES_DB="airflow"
export POSTGRES_EXTRAS=""

AIRFLOW__CORE__SQL_ALCHEMY_CONN="postgresql+psycopg2://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}${POSTGRES_EXTRAS}"
AIRFLOW__CELERY__RESULT_BACKEND="db+postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}${POSTGRES_EXTRAS}"

export AIRFLOW__CORE__SQL_ALCHEMY_CONN
export AIRFLOW__CELERY__RESULT_BACKEND