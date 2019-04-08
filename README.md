# Disk space analysis

## Usage

```bash
curl -LO http://go.kipras.org/analyze.sh
bash analyze.sh
```

* Run this script as an administrator. This will create 3 files:
	* Every single file on your disk
	* All files sorted by size
	* Shorter version of sorted files

* After the script finishes, head over to inspect the generated files (by default, in `$HOME/Desktop/disk-analysis/`)
* Inspect the files generated (mostly the `sorted-disk-sizes` to see if any files take up more space than they should

[The idea came from this StackExchange question](https://unix.stackexchange.com/questions/125429/tracking-down-where-disk-space-has-gone-on-linux)

## License

[AGPL-3.0](./LICENSE)

