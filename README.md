 # Logbook 

Inspired by the ship's logs this is a cli-logbook for whenever you feel like taking down a note while running some mad devops commands in your UNIX terminal.
 
## Planning

Initial plan is to be able to run the diary via the command line and be able to read your personal journal.

## TODO

- [ ] Saves an entry
- [ ] Display the entries unencrypted
- [ ] Encrypts the entries
- [ ] Displays the entries encrypted

### Initial Goal

Inside of `erb`

```Ruby
# Creates new Diary
diary = Diary.new

# Diary methods
diary.add_entry('new entry') # => creates a new entry in the journal
diary.read() # => displays the entries
diary.lock(key) # => locks the journal and encrypts the entries
diary.read() # => displays the entries but they are encrypted
```

### Next Goal: running the program in the command line

