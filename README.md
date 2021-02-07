# Service Discovery using Consul for Prometheus as Docker containers

## WHY this?

I found several examples of prometheus and grafana within docker containers. However, I could not find one example where Prometheus Service Discovery via Consul worked completely within Docker containers including Alert Manager. Had to put this together to ensure it helped someone who needed it.

## Description

A simple docker-compose configuration that allows the following services to run as docker containers

- prometheus
- grafana
- cadvisor
- consul
- node-exporter
- alert-manager sending alerts to slack

All the configuration items are there. Alert Manager rules can be extended and when new serivces are registered with Consul, Prometheus auto discovers the services.

## Installation

- Edit the file data/alertmanager.yml
- Replace the placeholder <<API_URL>> with your Slack webhook URL

```yaml
api_url: <<API_URL>> ##webhook url
```

- Replace the placeholder <<CHANNEL>> with your Slack channel. Leave the # Symbol in

```yaml
channel: "#<<CHANNEL>>"
```

- Run the following from the root folder

```bash
docker-compose up -d
```

## Removing the containers

- Run the following from the root folder

```bash
docker-compose down --remove-orphans
```

## URLs to access

- Prometheus available at [http://localhost:9090](http://localhost:9090)
- Consul available at [http://localhost:8500](http://localhost:8500)
- Alert Manager available at [http://localhost:9093](http://localhost:9093)
- Node Exporter available at [http://localhost:9100](http://localhost:9100)
- cadvisor available at [http://localhost:8080](http://localhost:8080)
- Grafana available at [http://localhost:3000](http://localhost:3000)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
