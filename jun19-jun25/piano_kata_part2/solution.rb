# my solution

def which_note(key_press_count)
  notes = ["G#","A","A#","B","C","C#","D","D#","E","F","F#","G"]
  if key_press_count <= 88
    notes[key_press_count % 12]
  else
   notes[key_press_count % 88 % 12]
  end
end


# from outher solutions should have set up notes as [A -> G]
# when calling the note use subrtract 1
# ie notes[key_press_count % 12 - 1]
