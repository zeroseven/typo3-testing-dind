# Gitlab Docker In Docker TYPO3 testing

Run tests for TYPO3 like the core team does

## GitlabCI example

```
unit tests:
    stage: test
    image: docker:git
    variables:
        DOCKER_DRIVER: overlay2
        DOCKER_TLS_CERTDIR: "/certs"
    services:
        - docker:dind
    script:
        - composer install
        - Build/Scripts/runTests.sh -s unit -x -e "-c tests/UnitTests.xml --coverage-text"
    only:
        - master
        - production
```