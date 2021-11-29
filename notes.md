## Local Setup
```
brew install MySQL
```

## Planetscale

Create a new planetscale database
```
pscale database create chromadb
```

Connect to the database
```
pscale shell chromadb main
```

Create a service-token, one is needed for each "app"
```
pscale service-token create
```

Add service token to the database
```
pscale service-token add-access nyprhd2z6bd3 connect_production_branch --database chromadb
```

To list all service tokens issued
```
pscale service-token list 
```