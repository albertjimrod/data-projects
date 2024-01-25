import os


def start():
	size_k = 30762424
	loops = 0
	for root, directories, files in os.walk('../'):
		for _file in files:
			full_path = os.path.join(root, _file)
			size = os.path.getsize(full_path)
			if size<size_k and loops < 10:
				print(f"Size: {size/1024}Mb - File: {full_path}")
				loops +=1	
				


if __name__ == '__main__':
	start()
