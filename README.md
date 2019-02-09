# Disk analysis and cleanup

[Originally from this StackExchange question](https://unix.stackexchange.com/questions/125429/tracking-down-where-disk-space-has-gone-on-linux)

* Run script as administrator. This will create 3 files:
	* The large file with full file list
	* The sorted large file with full file list
	* The small sorted file, perfect for inspecting & analysing disk space

```bash
bash analyze.sh
```

## License

[AGPL-3.0](./LICENSE)

