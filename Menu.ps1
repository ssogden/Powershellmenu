#Areyousure function. Alows user to select y or n when asked to exit. Y exits and N returns to main menu.  
 function areyousure {$areyousure = read-host "Are you sure you want to exit? (y/n)"  
           if ($areyousure -eq "y"){exit}  
           if ($areyousure -eq "n"){mainmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 areyousure  
                }  
                     }  
 #Mainmenu function. Contains the screen output for the menu and waits for and handles user input.  
 
 
 function mainmenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo ""  
 echo "    1. Open Notepad"  
 echo "    2. Open Calculator"
 echo "    3. Exit"  
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 
 
 
 if ($answer -eq 1){notepad; mainmenu}  
 elseif ($answer -eq 2){calc; mainmenu}
 elseif ($answer -eq 3){areyousure; mainmenu}
 else {write-host -ForegroundColor red "Invalid Selection"  
       sleep 10  
       mainmenu  
      }  
                
}

mainmenu