module Enumerable

    def my_each
        for x in 0...self.size
            yield self[x]
        end
        self
    end
    
    def my_each_with_index
        for x in 0...self.size
            yield(self[x], x)
        end
        self
    end
    
    def my_all?
        count = 0
        for x in 0...self.size
            if yield(self[x])
                count += 1
            end
        end
        if count == self.size
            result = true
        else
            result = false
        end
        result
    end

    def my_any?
        count = 0
        for x in 0...self.size
            if yield(self[x])
                count += 1
            end
        end
        if count > 0
            result = true
        else
            result = false
        end
        result
    end

    def my_none?
        count = 0
        for x in 0...self.size
            if yield(self[x])
                count += 1
            end
        end
        if count == 0
            result = true
        else
            result = false
        end
        result
    end

    def my_count
        count = 0
        for x in 0...self.size
            count += 1
        end
        count
    end

    def my_map
        result = []
        for x in 0...self.size
            result[x] = yield self[x]
        end
        result
    end

def my_inject
    x = self[0]
    for y in 1...self.size
        x = yield(x, self[y]) 
    end
    x
end

def multiply_els(array)
   array.my_inject { |x, y| x * y } 
end

end