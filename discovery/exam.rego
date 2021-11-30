package discovery

config := {
  "services" : 
    - name: play
      url: https://play.openpolicyagent.org
  "bundles": {
    "main": {
      "service": "play",
      "resource": bundle_name  # line 7
    }
  }
}

rt := opa.runtime()
region := rt.config.labels.region
bundle_name := region_bundle[region]

# region-bundle information
region_bundle := {
  "US": "example/test1/p",
  "IN": "bundles/SPk0ed7BLv"
}
