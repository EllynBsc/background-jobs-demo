class FakeJob < ApplicationJob
  queue_as :default #by default, it has no priority

  def perform(*args) #to specify that you can take an array of arguments
    # Do something later
    #what is my job doing
    puts "1. starting the job"
    sleep 5
    puts "2. finishing the job"
  end
end
