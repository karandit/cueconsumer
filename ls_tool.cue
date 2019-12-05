package cueconsumer

import (
	"encoding/yaml"
	"tool/cli"
)

command : ls : {
	what: "mysql"
	task: print: cli.Print & {
		text : yaml.MarshalStream([ x for k, x in tf if k == what ])
	}
}
