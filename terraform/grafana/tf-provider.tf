terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "1.40.1"
    }
  }
}

provider "grafana" {
  url  = "http://127.0.0.1:3000/"
  auth = "glsa_8ydOELTqGCLZlKkjFuVQX9X9AKIQYCMO_929fed79"
}
