def minimum_index(seq):
    if len(seq) == 0:
        raise ValueError("Cannot get the minimum value index from an empty sequence")
    min_idx = 0
    for i in range(1, len(seq)):
        if seq[i] < seq[min_idx]:
            min_idx = i
    return min_idx

from random import randint, shuffle

class TestDataEmptyArray:
    
    @staticmethod
    def get_array():
        return []
    
class TestDataUniqueValues:
    
    dataList = []
    
    @classmethod
    def get_array(cls):
        data = set()
        while len(data) < 3:
            data.add(randint(0, 100))
        for _ in range(20):
            data.add(randint(0, 100))
        cls.dataList = list(data) 
        shuffle(cls.dataList)
        return cls.dataList
    
    @classmethod
    def get_expected_result(cls):
        return cls.dataList.index(min(cls.dataList))
        
class TestDataExactlyTwoDifferentMinimums:
    
    dataList = []
    
    @classmethod
    def get_array(cls):
        for _ in range(20):
            cls.dataList.append(randint(0, 100))
        newMin = min(cls.dataList) - 1  
        for _ in range(2):
            cls.dataList.insert(randint(0, len(cls.dataList) - 1), newMin)
        return cls.dataList
    
    @classmethod
    def get_expected_result(cls):
        return cls.dataList.index(min(cls.dataList))

def TestWithEmptyArray():
    try:
        seq = TestDataEmptyArray.get_array()
        result = minimum_index(seq)
    except ValueError as e:
        pass
    else:
        assert False


def TestWithUniqueValues():
    seq = TestDataUniqueValues.get_array()
    assert len(seq) >= 2

    assert len(list(set(seq))) == len(seq)

    expected_result = TestDataUniqueValues.get_expected_result()
    result = minimum_index(seq)
    assert result == expected_result


def TestiWithExactyTwoDifferentMinimums():
    seq = TestDataExactlyTwoDifferentMinimums.get_array()
    assert len(seq) >= 2
    tmp = sorted(seq)
    assert tmp[0] == tmp[1] and (len(tmp) == 2 or tmp[1] < tmp[2])

    expected_result = TestDataExactlyTwoDifferentMinimums.get_expected_result()
    result = minimum_index(seq)
    assert result == expected_result

TestWithEmptyArray()
TestWithUniqueValues()
TestiWithExactyTwoDifferentMinimums()
print("OK")

