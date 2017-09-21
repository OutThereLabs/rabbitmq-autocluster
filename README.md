# RabbitMQ Autocluster

This template creates a RabbitMQ cluster stateful set

## Running with Docker

```shell
$ docker run -d --hostname my-rabbit --name some-rabbit outtherelabs/rabbitmq-autocluster
```

You can access it by visiting [http://container-ip:15672](http://container-ip:15672) in a browser.


## Deploying via OpenShift

To create an OpenShift RabbitMQ statefulset cluster run:

```shell
$ oc new-app https://raw.githubusercontent.com/OutThereLabs/rabbitmq-autocluster/master/template.yaml
```
