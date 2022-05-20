swagger-cli validate ./src/openapi.yaml
swagger-cli bundle ./src/openapi.yaml --dereference --type yaml -o ./dist/openapi_all.yaml
openapi-filter --flags x-internal -- ./dist/openapi_all.yaml ./dist/openapi_public.yaml
openapi-filter --inverse --valid -- ./dist/openapi_all.yaml ./dist/openapi_private.yaml