define :melody_part1 do|full, half|
  sleep half
  use_synth :beep
  play :G, release: half
  sleep half
  play :A, release: full
  sleep full
  play :G, release: half
  sleep half
  play :A, release: full
  sleep full
  play :A, release: full
  sleep half
end

define :bass do
  use_synth :hoover
  play 40, release: 20
end

define :drums do
  500. times do
    sample :drum_snare_soft, amp: 0.5
    sleep 0.1
  end
end

in_thread do
  drums
end

bass

sleep 7

10. times do
  melody_part1 0.2, 0.1
end