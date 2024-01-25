
# File Size Checker

This Python script, `file_size_checker.py`, is a simple tool to check the sizes of files in a directory and its subdirectories. It prints the size of files in megabytes (MB) and the full path of the file if its size is less than a specified threshold (`size_k`).

## Usage

1. Make sure you have Python installed on your system.
2. Clone this repository or download the `file_size_checker.py` script.
3. Open a terminal or command prompt.
4. Navigate to the directory where the `file_size_checker.py` script is located.
5. Run the script by typing `python file_size_checker.py` and pressing Enter.

## Parameters

- `size_k`: The maximum size of files to be displayed, specified in kilobytes (KB). Change this value to adjust the threshold for file sizes.
- `loops`: The number of files to display. By default, it is set to display the first 10 files found with sizes less than `size_k`.

## Example Output

```
Size: 1023.42Mb - File: /path/to/file1.txt
Size: 512.12Mb - File: /path/to/file2.txt
Size: 256.67Mb - File: /path/to/file3.txt
```

## Requirements

- Python 3.x
- Operating system compatible with Python (e.g., Linux, macOS, Windows)

## License

This script is licensed under the [MIT License](LICENSE).

---
Please make sure to adjust any paths or settings as needed before running the script. If you have any questions or encounter any issues, feel free to open an issue in this repository.
