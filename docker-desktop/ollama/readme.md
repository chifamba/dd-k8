kubectl port-forward svc/ollama-service  8080:11434 -n ollama 


curl -vv http://localhost:8080/api/tags

for i in $(seq 1 100); do curl -s -o /dev/null "http://localhost:8080/api/tags"; done


while true
do
curl -s -w "%{http_code} %{url_effective}\n" -o /dev/null "http://localhost:8080/api/tags"
sleep 0.1
done


curl http://localhost:11434/api/pull -d '{
  "name": "llama3.2"
}'

curl http://localhost:8080/api/pull -d '{ "name": "llama3.2"}'

curl -v http://localhost/ollama/api/tags

curl -v http://localhost/ollama/api/pull -d '{ "name": "llama3.2"}'
curl -v http://localhost/ollama/api/pull -d '{ "name": "mistral"}'
curl -v http://localhost/ollama/api/pull -d '{ "name": "gemma2:2b"}'
curl -v http://localhost/ollama/api/pull -d '{ "name": "llama3.2:1b"}'

# query the llm
curl -v http://localhost/ollama/api/generate -d '{"model": "llama3.2:1b", "stream": false, "prompt":"What is the capital of France?"}'


####  AI Gent sample

help me develop a AI agent sample installation while reusing my current deployment as much as possible.
i would like to use the LangChain framework using Containerized Microservices with language model, agent logic, memory, tools in separate containers. to allow for scalability and flexibility.

I will be deploying everything within my Kubernetes cluster.

help me implement a simple extensible multi agent sample that also has:
-Monitoring and Logging: Implement monitoring and logging to track agent performance and debug issues.   
-Scalability: Design your deployment to handle increased traffic and agent interactions.
-Cost Optimization: Choose cost-effective solutions for vector databases, memory stores, and compute resources.

provide a step by step guide and all the needed deployments to successfully complete this.
also provide all the code needed.

also provide all the curl statements to access the implementation, which should be exposed via the ingress gateway.