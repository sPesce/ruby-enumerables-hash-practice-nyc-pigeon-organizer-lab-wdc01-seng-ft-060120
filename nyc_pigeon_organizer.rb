require 'pry'


def nyc_pigeon_organizer(data)
  testbool = false
  
  ###################################
  #outter: new hash (memo)
  #original hash structure:
  #{k1 => {k2 => [name[0] ... name[n]] } }
  #       \  ------  v1 --------------/
  #               \ ---- v2 --------/
  pigeon_data = data.reduce({}){|outter, (k1, v1)|
    v1.each{|(k2,v2)|
      v2.each{|name|
       
       
        #create hashes/arrays where nil       
        if(!outter[name])
          outter[name] = {}
        end
        if(!outter[name][k1])
          outter[name][k1] = []
        end
         
        puts "adding #{k2} to outter[#{name}][#{k1}]"
        outter[name][k1] << (k2.to_s) 
        
         
        ###test if :gender was visited### 
        if (k1 == :gender)
          testbool
        end 
      }
    }
    outter
  }
  ####tests##### 
  puts "gender visited? #{testbool}"
  pp pigeon_data
  
end
=begin ###### first try on solving/ not used)
def unused(data)
 pigeon_data = {}
 data.each{|(outer_key, outer_val)|
   outer_val.each{|mid_key, mid_val|
     mid_val.each{|name|
     
      puts "#{outer_key}"
     if pigeon_data[name]
       puts "if ran"
        pigeon_data[name][outer_key] << mid_val.to_s 
     else
       puts "else ran"
       pigeon_data[name] = {outer_key: []}
     end
     }
     pp pigeon_data
    
   }
 }
end
=end 