# ftp-deploy

## Exemplo de uso

```
name: Deploy via ftp
on: push
jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2

    - name: FTP Deploy Locaweb
      uses: locaweb/ftp-deploy@1.0.0
      with:
        host: ${{ secrets.HOST }} 
        user: ${{ secrets.USER }}
        password: ${{ secrets.PASS }}
        localDir: "dist"
```

