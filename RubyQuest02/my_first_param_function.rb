def detonation_in(seconds_left)
    puts("detonation in... #{seconds_left} seconds.")
end

timer = 10
seconds_left = timer
while(seconds_left > 0)
    detonation_in(seconds_left)
    seconds_left -= 1
end