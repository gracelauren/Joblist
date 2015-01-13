class Jobs
  @@all_jobs = []
  define_method(:initialize) do |title, duties, years|
    @title = title
    @duties = duties
    @years = years
  end

  define_method(:title) do
    @title
  end

  define_method(:duties) do
    @duties
  end

  define_method(:years) do
    @years
  end

  define_singleton_method(:all) do
    @@all_jobs
  end

  define_method(:save) do
    @@all_jobs.push(self)
  end

  define_singleton_method(:clear) do
    @@all_jobs = []
  end
end
