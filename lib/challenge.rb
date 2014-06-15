class Challenge
  def initialize(data)
    @data = data
  end


  def parse_data(company_id)
    accumulator = []

    @data[:companies].each do |company|
      if company_id == company[:id]
        @name = company[:name]
      end
    end
    accumulator << {name: @name}

    #we have the company id
    # match the company id to id for co in people
    # if 2 co ids match, print emp id, name, co id

    @data[:people].each do |employee|
      employee[:employments].each do |company|
        if company_id == company[:company_id]
          accumulator << {employees: [] << [{id: employee[:id], first_name: employee[:first_name]}]}

        end
      end
    end
    accumulator
  end

  def unemployed
    accumulator2 = []

    @data[:people].each do |person|
      if person[:employments].empty?
        accumulator2 << [{id: person[:id], first_name: person[:first_name], last_name: person[:last_name]}]
      end
    end
    accumulator2.flatten
  end

end