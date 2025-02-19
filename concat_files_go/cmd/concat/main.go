package main

import (
	"os"

	"github.com/alecthomas/kong"
	"github.com/rs/zerolog/log"

	gocli "github.com/gentoomaniac/bazel-playground/concat_files_go/pkg/cli"
	"github.com/gentoomaniac/bazel-playground/concat_files_go/pkg/logging"
)

var (
	version = "unknown"
	commit  = "unknown"
	binName = "unknown"
	builtBy = "unknown"
	date    = "unknown"
)

var cli struct {
	logging.LoggingConfig

	Outfile string `short:"o" help:"output file" type:"path" required:""`

	Paths []string `arg:"" name:"path" help:"source files" type:"path" required:""`

	Version gocli.VersionFlag `short:"V" help:"Display version."`
}

func main() {
	ctx := kong.Parse(&cli, kong.UsageOnError(), kong.Vars{
		"version": version,
		"commit":  commit,
		"binName": binName,
		"builtBy": builtBy,
		"date":    date,
	})
	logging.Setup(&cli.LoggingConfig)

	log.Debug().Str("outfile", cli.Outfile).Msg("")
	log.Debug().Strs("paths", cli.Paths).Msg("")

	out, err := os.Create(cli.Outfile)
	if err != nil {
		log.Panic().Err(err).Msg("")
	}
	defer func() {
		if err := out.Close(); err != nil {
			log.Panic().Err(err).Msg("")
		}
	}()

	for _, path := range cli.Paths {
		data, err := os.ReadFile(path)
		if err != nil {
			log.Fatal().Err(err).Str("inFile", path).Msg("failed reading input file")
		}

		_, err = out.Write(data)
		if err != nil {
			log.Fatal().Err(err).Str("inFile", path).Msg("could not write data to file")
		}
		log.Debug().Str("data", string(data)).Str("path", path).Msg("")
	}

	out.Close()

	ctx.Exit(0)
}
