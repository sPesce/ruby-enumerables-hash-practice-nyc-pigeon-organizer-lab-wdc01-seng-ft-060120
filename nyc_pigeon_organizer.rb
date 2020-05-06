require 'pry'


def pigeon_organizer(data)
  pigeon_data = data.reduce({}){|outter, (k1, v1)|
    v1.each{|(k2,v2)|
      v2.each{|name|
        if(!outter[name])
         outter[name] = {}
        end
    
        outter[name][k1].push(k2.to_s) 
        
        
      }
      outter
    }
    
  }
  {"theo" => {color: ["purple"]}
end

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