# Disk space analysis

## Usage

```bash
curl -LO http://go.kipras.org/analyze.sh
./analyze.sh -h
```

* Run this script as an administrator with preferred options. It will create 3 files, containing:
	* Every single file on your disk
	* Every file sorted by size
	* Sorted files, grouped (purfect for inspection 🕵)

* After the script finishes, head over to inspect the generated files (by default, in `$HOME/Desktop/disk-analysis/`)

## Credit

[The idea came from this StackExchange question](https://unix.stackexchange.com/questions/125429/tracking-down-where-disk-space-has-gone-on-linux)

## License

[AGPL-3.0](./LICENSE)

