Before do |scenario|
  @time = Time.now
  @scenario_details = "#{scenario.location.file}:#{scenario.location.line}"
  p "Scenario #{@scenario_details} started at: #{@time}s"
end

Before('@required_home_page') do |scenario|
  action.get_home_page
end

After do |scenario|
  print_time_take_for_scenario
end

def print_time_take_for_scenario
  p "Time taken to execute Scenario: #{@scenario_details} #{Time.now - @time}s"
end
