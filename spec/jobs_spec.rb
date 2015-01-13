require('rspec')
require('jobs')

describe(Jobs) do
  before() do
    Jobs.clear()
end

    describe('#title') do
      it('lets you say your job title') do
        test_jobs = Jobs.new("Manager", "Watch TV", "2001-2002")
        expect(test_jobs.title()).to(eq("Manager"))
      end
    end

    describe('#duties') do
      it('lets you describe your job duties') do
        test_jobs = Jobs.new("Manager", "Watch TV", "2001-2002")
        expect(test_jobs.duties()).to(eq("Watch TV"))
      end
    end

    describe('#years') do
      it('lets you describe the years you were at you job') do
        test_jobs = Jobs.new("Manager", "Watch TV", "2001-2002")
        expect(test_jobs.years()).to(eq("2001-2002"))
      end
    end

    describe('#save') do
      it("adds the job data arguments to the array of job history") do
        test_jobs = Jobs.new("Manager", "Watch TV", "2001-2002")
        test_jobs.save()
        expect(Jobs.all()).to(eq([test_jobs]))
      end
    end

    describe(".all") do
      it("is empty at first") do
        expect(Jobs.all()).to(eq([]))
      end
    end

    describe(".clear") do
      it("empties out all of the saved places") do
        Jobs.new("Manager", "Watch TV", "2001-2002")
        Jobs.clear()
        expect(Jobs.all()).to(eq([]))
      end
    end
  end
