# Manage Kong resources with yaml

## Python >= 3.6

Install [kong-incubator](https://pypi.org/project/kong-incubator):

    pip install --upgrade kong-incubator

## mockbin.yaml

Create or upgrade [Mockbin](http://mockbin.org) proxy:

    kong-incubator --yaml mockbin.yaml

Generate a random `key` for the consumer:

    export MOCKBIN_MOCKER_KEY=$(kong-incubator --key-auth mocker --output key)
    echo $MOCKBIN_MOCKER_KEY

Use via HTTPS (also HTTP works):

    curl -i -k -X GET \
        https://localhost:8443/bin/bbe7f656-12d6-4877-9fa8-5cd61f9522a9/view \
        --header "apikey: $MOCKBIN_MOCKER_KEY"

## kadmin.yaml

This creates [Kong Admin API Loopback](https://docs.konghq.com/0.14.x/secure-admin-api/#kong-api-loopback).

Create the resources and get the `key` for admin:

    kong-incubator --yaml kadmin.yaml
    export KONG_ADMIN_KEY=$(kong-incubator --key-auth root --output key)
    echo $KONG_ADMIN_KEY

Use Kong Admin API from now on:

    export KONG_ADMIN_URL=http://localhost:8000/kadmin
    kong-incubator --yaml ..

Use Kong Admin only via authenticated HTTPS endpoint from now on:

    curl -i -k -X GET \
        https://localhost:8443/kadmin/services/mockbin \
        --header "apikey: $KONG_ADMIN_KEY"
