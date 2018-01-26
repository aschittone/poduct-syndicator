desc "Automatically syndicate new products added by admin within the last hour"
task :syndicate => :environment do
  puts "Syndicating"
  Syndication.new.perform
  puts "done."
end