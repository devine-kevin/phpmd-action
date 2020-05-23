# phpmd-action
Run phpmd as a workflow action

```yaml
on: [push, pull_request]
name: phpmd
jobs:
  phpmd:
    name: phpmd
    runs-on: ubuntu-latest
    steps:
    - name: checkout
      uses: actions/checkout@v2

    - name: phpmd
      uses: devine-kevin/phpmd-action
      with:
        args: src/ text cleancode,codesize,controversial,design,naming,unusedcode
```
