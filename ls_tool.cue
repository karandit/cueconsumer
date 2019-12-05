package cueconsumer

import (
	"tool/cli"
)

command : ls : {
	task: print: cli.Print & {
		text : "alma"
	}
}
