##Welcome to My Select Query
In this project we will be quering data in CVS.

##Task
The task is to create a class MySelectQuery that can parse CSV content and perform filtering based on column values. The challenge lies in efficiently parsing the CSV content and implementing a filtering mechanism.

##Description
I've implemented a Ruby class MySelectQuery with methods to parse CSV content and filter rows based on specific criteria The class constructor takes CSV content as input and stores it internally. The where method filters rows based on the provided column name and criteria.

##Installation
To use this project, clone the repository and require the file in your Ruby project. No additional installation steps are required.

##Usage
To use the MySelectQuery class, create an instance with CSV content as input. Then, use the where method to filter rows based on column values. Here's an example:

require 'csv'
class MySelectQuery
    def initialize(content)
        @data = CSV.parse(content, headers: true)
    end

    def where(column, criteria)
        result = []
        @data.filter do |row|
            if row[column] == criteria
                result << row.to_hash.values.join(',')
            end
        end
        result
    end
end

### The Core Team

