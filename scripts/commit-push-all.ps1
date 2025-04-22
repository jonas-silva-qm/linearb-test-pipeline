# commit-push-all.ps1 (corrigido e robusto)

$branches = @(
  "bugfix/login-validation",
  "feature/conflict-demo",
  "feature/dashboard",
  "feature/login",
  "feature/payment",
  "main"
)

foreach ($branch in $branches) {
    Write-Host "--- Trocando para a branch: $branch ---" -ForegroundColor Cyan
    git stash push -m "auto-stash-$branch" 2>$null
    git checkout $branch

    Write-Host "[INFO] Recuperando alterações stash..." -ForegroundColor Yellow
    git stash pop 2>$null

    Write-Host "[INFO] Commitando alterações..." -ForegroundColor Yellow
    git add .
    git commit -m "chore($branch): auto-commit de progresso" 2>$null

    Write-Host "[INFO] Enviando para o GitHub..." -ForegroundColor Green
    git push -u origin $branch
}

Write-Host "`n✅ Todas as branches foram commitadas e enviadas com sucesso!" -ForegroundColor Green