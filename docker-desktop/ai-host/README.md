# Password used in postgres db
echo "P0stgr3s" | base64


# NBN encryption key  echo "8789hbwer-sdfkbksd-34729232-sdkjsds-239892j" | base64   
echo "8789hbwer-sdfkbksd-34729232-sdkjsds-239892j" | base64

#  encryptionKey": "super-secret-key"


#  N8N_USER_MANAGEMENT_JWT_SECRET:  echo "N8N_USER_MANAGEMENT_JWT_SECRET-8789hbwer-sdfkbksd-34729232-sdkjsds-239892j" | base64
TjhOX1VTRVJfTUFOQUdFTUVOVF9KV1RfU0VDUkVULTg3ODloYndlci1zZGZrYmtzZC0zNDcyOTIzMi1zZGtqc2RzLTIzOTg5MmoK 

kubectl apply -f ollama,shared,n8n,postgres,qdrant

kubectl delete -f n8n,postgres,qdrant,shared,ollama



ls -lsa /backup/credentials 
echo "================"
ls -lsa /backup/workflows

DB_POSTGRESDB_USER=root  # cm9vdAo=
DB_TYPE=postgresdb
N8N_DIAGNOSTICS_ENABLED=false
N8N_USER_MANAGEMENT_JWT_SECRET=even-more-secret # ZXZlbi1tb3JlLXNlY3JldAo=
N8N_ENCRYPTION_KEY=super-secret-key # c3VwZXItc2VjcmV0LWtleQo=
N8N_PERSONALIZATION_ENABLED=false
DB_POSTGRESDB_PASSWORD=password  # cGFzc3dvcmQK
DB_POSTGRESDB_HOST=postgres




DB_POSTGRESDB_PORT: "5432"

DB_POSTGRESDB_DATABASE: "your-database-name" 
