# Disk space analysis

## Usage

* Run script as administrator. This will create 3 files:
	* Every single file on your disk
	* All files sorted by size
	* Shorter version of sorted files

```bash
bash analyze.sh
```

* After the script finishes, head over to inspect the generated files (by default, in `$HOME/Desktop/disk-analysis/`)
* Inspect the files generated (mostly the `sorted-disk-sizes` to see if any files take up more space than they should

[The idea came from this StackExchange question](https://unix.stackexchange.com/questions/125429/tracking-down-where-disk-space-has-gone-on-linux)

## License

[AGPL-3.0](./LICENSE)
