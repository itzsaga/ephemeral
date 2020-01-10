GOOS=linux go build && \
zip ephemeral.zip ephemeral && \
rm ephemeral && \
aws lambda update-function-code --function-name itzsaga-ephemeral --zip-file fileb://ephemeral.zip --profile ephemeral && \
rm ephemeral.zip
