require 'spec_helper'

describe UniversityScholarship do
  before { @scholarship = UniversityScholarship.new(school_name:"Prestigious University", school_unswr_rank: 97, home_page: "www.presteige.edu", default_tuition: 25000, shp_name: "Classy Scholarship", shp_type: "Academic", shp_amount: 25000, shp_requirements: "1. Be a student with class\n2. I forget the rest")}
	subject { @scholarship }

	it {should respond_to(:school_name)}
	it {should respond_to(:default_tuition)}
	it {should respond_to(:shp_name)}
	it {should respond_to(:shp_type)}
	it {should respond_to(:shp_amount)}
end
