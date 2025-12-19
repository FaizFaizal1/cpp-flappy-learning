$issues = @(
    @{ title = "Day 1: Concept & Setup"; body = "Tasks:`n- [ ] Select Content: Valid vs Invalid C++ Identifiers`n- [ ] Create Construct 3 Project`n- [ ] Add Inputs (Touch/Keyboard)" },
    @{ title = "Day 2: Player Movement"; body = "Tasks:`n- [ ] Create Player Sprite (Cursor/Block)`n- [ ] Implement Gravity (Platform Behavior)`n- [ ] Implement Jump Control" },
    @{ title = "Day 3: Scrolling World & Obstacles"; body = "Tasks:`n- [ ] Scrolling Logic (Move world left)`n- [ ] Create Gate Sprites (Valid/Invalid)`n- [ ] Add Bullet Behavior to Gates" },
    @{ title = "Day 4: Spawning Logic"; body = "Tasks:`n- [ ] Spawn System (Every X seconds)`n- [ ] Randomize Y Position`n- [ ] Integrate C++ Content (Array Selection)" },
    @{ title = "Day 5: Collision & Feedback"; body = "Tasks:`n- [ ] Collision Events`n- [ ] Success: Score + Sound`n- [ ] Failure: Game Over + Error Message" },
    @{ title = "Day 6-7: Tweaks & Review"; body = "Tasks:`n- [ ] Tweak Physics (Jump/Gravity)`n- [ ] Verify Learning Integration" },
    @{ title = "Day 8: Scoring System"; body = "Tasks:`n- [ ] Global Variable: Score`n- [ ] UI Layer Setup`n- [ ] Display Score Text" },
    @{ title = "Day 9: Game Over & Restart"; body = "Tasks:`n- [ ] Game Over Layout`n- [ ] Stop Scrolling on Death`n- [ ] Restart Button implementation" },
    @{ title = "Day 10: Start Screen"; body = "Tasks:`n- [ ] Start Layout`n- [ ] Title & Objective Text`n- [ ] Play Button" },
    @{ title = "Day 11: Aesthetics (Code Theme)"; body = "Tasks:`n- [ ] Visual Theme: Dark Mode / Code Editor`n- [ ] Audio: Jump, Score, Crash Sounds" },
    @{ title = "Day 12: Difficulty Scaling"; body = "Tasks:`n- [ ] Increase Scroll Speed over time/score" },
    @{ title = "Day 13: Export & Docs"; body = "Tasks:`n- [ ] HTML5 Export`n- [ ] Gameplay Video Recording" },
    @{ title = "Day 14: Final Submission"; body = "Tasks:`n- [ ] Upload to UFuture" }
)

# Check if repo exists, if not create it
if (-not (gh repo view --json name)) {
    Write-Host "Creating Repository..."
    gh repo create cpp-flappy-learning --public --source=. --remote=origin --push
} else {
    Write-Host "Repository already exists."
}

# Create Issues
foreach ($issue in $issues) {
    Write-Host "Creating issue: $($issue.title)"
    gh issue create --title $issue.title --body $issue.body
    Start-Sleep -Milliseconds 500
}
