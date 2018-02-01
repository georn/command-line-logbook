 # Logbook [![Build Status](https://travis-ci.org/georn/command-line-diary.svg?branch=master)](https://travis-ci.org/georn/command-line-diary)

Inspired by the ship's logs this is a cli-logbook for whenever you feel like taking down a note while running some mad devops commands in your UNIX terminal.
 
## Planning

Initial plan is to be able to run the diary via the command line and be able to read your personal journal.

## TODO

- [x] Saves an entry
- [x] Display the entries unencrypted
- [ ] Encrypts the entries
- [ ] Displays the entries encrypted

### Initial Goal

Inside of `erb`

```Ruby
# irb session
# Creates new Logbook
logbook = Logbook.new

# Logbook methods
logbook.add_entry('new entry') # => creates a new entry in the journal
logbook.read # => displays the entries
logbook.lock(:key) # => locks the journal and encrypts the entries
logbook.read # => displays the entries but they are encrypted
```

### Next Goal: Displaying the entries 

The Log class was created and its holding the data structure of each Log, while the Logbook Class is being responsible for the functionality of adding new entries to the structure and displaying the entries in the console.

```Ruby
# irb session
logbook.read_entries # Displays the entries in the console in the following format
# - first entry
# - second entry
logbook.add_entry('yet another entry')
logbook.read_entries # Displays the entries in the console in the following format
# - first entry
# - second entry
# - yet another entry
logbook.lock(:key)
```

### Next Goal: Encrypting the entries

```Ruby
# irb session
logbook.read_entries # Displays the entries in the console in the following format
# - first entry
# - second entry
logbook.lock(:key) # Encrypts the entries
logbook.read_entries
# - 
# 
```

### Next Goal: running the program in the command line
### Final Goal : Build it as a Ruby Gem

```bash
gem install logbook -g
logbook --read # sets the first key because of first session
logbook # sets the fist key because of first session
logbook --read --key #unlocks the session and displays the entries in the console
logbook --read #displays the entries in the console
logbook --add 'today I ate cereal' #adds an entry to the logbook
logbook --add 'also remember to practice for job interview' #adds an entry to the logbook
logbook --locks #encrypts entries
rails new new-rails-project
```

