## Token generator

This token script was created by Istio. The private key is exposed in this repository, it should only be used for testing.

### Public keys
The public key can be found this in this jwks endpoint https://raw.githubusercontent.com/istio/istio/release-1.23/security/tools/jwt/samples/jwks.json, but it also available in this repository.

### Usage
```
# Generating token with default expire date
./generate-token.sh

# Generating token with custom expire date
./generate-token.sh 7200 # 2 hours

# Generating token with custom payload
./generate-token.sh 3600 --iss foo --sub bar
``` 
