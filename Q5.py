myArray = [31, 2, 11, 23, 8, 7, 11, 14, 20]
index_array = [(myArray[i], i+1) for i in range(len(myArray))]
def first(a):
    return a[0]
index_array.sort(key=first)

sorted_array = [index_array[i][0] for i in range(len(myArray))]
index = [index_array[i][1] for i in range(len(myArray))]
rank = [(index[i], sorted_array[i], i+1) for i in range(len(myArray))]
rank.sort(key=first)
ranked_array = [rank[i][2] for i in range(len(myArray))]
print('original:', myArray)
print('sorted:', sorted_array)
print('index:', index)
print('rank:', ranked_array)