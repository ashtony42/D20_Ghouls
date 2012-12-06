def wait_until &block
  times_retried = 0
  condition = block.call
  while condition == false
    condition = block.call
    sleep 1
    times_retried += 1
    if times_retried >= 5
      raise "Timed out while waiting for condition to be met"
    end
  end
end
