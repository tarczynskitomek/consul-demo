# Spring Cloud Gateway with Consul Service Discovery demo
Extremely simply app demonstrating Spring Cloud Gateway working with Consul Service Discovery

* API Gateway app listens on localhost:8080
* Business Service app listens on localhost:8081

## Run

    ./run_consul.sh
    cd gateway/
    ./gradlew bootRun

In separate terminal:
    
    cd service/
    ./gradlew bootRun

## Test

    curl -v localhost:8080/business-service/api/hello

## Consul console

Check Consul's local IP with:

    docker exec -t dev-consul consul members
    
Open in your favourite browser:
    
     ${consul_ip}:8500
## Troubleshooting
- App cannot connect to Consul? Check if Consul's IP set in application.yaml matches the one returned by consul members command
