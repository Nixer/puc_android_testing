Before do
#start appium driver
  $driver.start_driver
end

After do |scenario|
#quit from driver

  if scenario.failed?
    #create SS directory
    unless File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")
    end

    #create file
    time_stamp = Time.now.strftime("%Y.%m.%d_%H:%M:%S")
    ss_name = "#{time_stamp}.png"
    ss_file = File.join("screenshots", ss_name)
    $driver.screenshot(ss_file)
    embed("#{ss_file}", "image/png")
    #take actual SS

    #embed in report file
  end

  $driver.driver_quit
end

AfterConfiguration do
  FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end