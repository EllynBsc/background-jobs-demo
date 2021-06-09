namespace :user do
  desc "TODO"
  task update_all: :environment do
    # what your task is doing
    users = User.all
    puts "Enqueuing update of #{users.size} users..."
    users.each do |user|
      UpdateUserJob.perform_later(user)
    end
    puts "run the job for all the users, bye!"
  end

end

