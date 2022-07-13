r, o, c = map(int, input().split())

rem_ov = 20 - o
play_time = rem_ov * 6
max_run = play_time * 6
max_total_score = c + max_run

if max_total_score > r:
    print("YES")
else:
    print("NO")