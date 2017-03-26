#Manipulate the 5-digit encryption key (41521) to find the rotations

  #Find the A-rotation: first & second digits
  #Find the B-rotation: second & third digits
  #Find the C-rotation: third & fourth digits
  #Find the D-rotation: fourth & fifth digits

#Manipulate the 6-digit date DDMMYY to find the offsets

  #Square the 6-digit date value
  #Find the last four digits of the Square

    #Find the A-offset: first digit
    #Find the B-offset: second digit
    #Find the C-offset: third digit
    #Find the D-offset: fourth digit

#Set up a character map a-z, 0-9, space, period & comma
   #def char_map = [*(a..z)] + [*(0..9)] + [" ", ".", ","]

#Encrypt a message in the form of a string received from a text file.
   #Use file i/o to open and manipulate the text file in Ruby to create a string.
   #Divide the new string into arrays of four characters

   #Encrypt each array of four characters:
     #Take the A-rotation value and add it to the A-offset value
       #Add that to the place of the 1st character in regard to its position on the character map.
       #The new character will be the encryption for the initial first character
     #Take the B-rotation value and add it to the B-offset value
       #Add that to the place of the 2nd character in regard to its position on the character map.
       #The new character will be the encryption for the initial second character
     #Take the C-rotation value and add it to the C-offset value
       #Add that to the place of the 3rd character in regard to its position on the character map.
       #The new character will be the encryption for the initial third character
     #Take the D-rotation value and add it to the D-offset value
       #Add that to the place of the 1st character in regard to its position on the character map.
       #The new character will be the encryption for the initial fourth character

#Decrypt a message in the form of a string received from a text file.
  #Use file i/o to open and manipulate the text file in Ruby to create a string.
  #Divide the new string into arrays of four characters

  #Decrypt each array of four characters:
    #Take the A-rotation value and add it to the A-offset value
      #Subtract that from the place of the 1st character in regard to its position on the character map.
      #The new character will be the encryption for the initial first character
    #Take the B-rotation value and add it to the B-offset value
      #Subtract that from the place of the 2nd character in regard to its position on the character map.
      #The new character will be the encryption for the initial second character
    #Take the C-rotation value and add it to the C-offset value
      #Subtract that from the place of the 3rd character in regard to its position on the character map.
      #The new character will be the encryption for the initial third character
    #Take the D-rotation value and add it to the D-offset value
      #Subtract that from the place of the 1st character in regard to its position on the character map.
      #The new character will be the encryption for the initial fourth character
