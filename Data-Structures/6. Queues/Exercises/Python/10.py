from queue import Queue

def queue_is_identical(source1,source2):
    return source1.queue == source2.queue

source1 = Queue()
source2 = Queue()
for item in ["A",2,"David",4]:
    source1.put(item)
for item in ["A",22,"David",4]:
    source2.put(item)
print(queue_is_identical(source1,source2))