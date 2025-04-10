# Gera novo timestamp
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$logDir = "logs"
New-Item -ItemType Directory -Force -Path $logDir | Out-Null

# Executa cobertura de testes
npm test -- --coverage > "$logDir/coverage-full-$timestamp.log"

# Copia trechos por categoria (mock: ajuste conforme testes reais)
Get-Content "$logDir/coverage-full-$timestamp.log" | Select-String "api.js" -Context 0, 4 | Out-File "$logDir/coverage-api-$timestamp.log"
Get-Content "$logDir/coverage-full-$timestamp.log" | Select-String "e2e" -Context 0, 4 | Out-File "$logDir/coverage-e2e-$timestamp.log"
Get-Content "$logDir/coverage-full-$timestamp.log" | Select-String "manual" -Context 0, 4 | Out-File "$logDir/coverage-manual-$timestamp.log"
