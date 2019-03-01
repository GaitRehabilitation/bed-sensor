import struct
import csv
import io
from os.path import isfile, join
BLOCK_SIZE = 18

path = sys.argv[1]
files = [f for f in listdir(mypath) if isfile(join(path, f)) and join(path, f).endswith('.BIN')]
for file in files:
    with open(join(path,file.split('.')[0] + ".csv",'w')) as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=['time','accx','accy','accz','gyrox','gyroy','gyroz','temp','meta'])
        writer.writeheader()

        with open(filename, "rb") as file:
            while(1):
                data_block = file.read(512)
                if data_block == b'':
                    break
                bt = io.BytesIO(data_block)
                count = struct.unpack('h',bt.read(2))
                if(count == 0):
                    break
                overruns = struct.unpack('h',bt.read(2))
                for i in range(1,count[0]):
                    data = struct.  unpack('Ihhhhhhhb',bt.read(19))
                    print(data)
                    writer.writerow({
                    'time':data[0],
                    'accx':data[1],
                    'accy':data[2],
                    'accz':data[3],
                    'gyrox':data[4],
                    'gyroy':data[5],
                    'gyroz':data[6],
                    'temp':data[7],
                    'meta':data[8]})