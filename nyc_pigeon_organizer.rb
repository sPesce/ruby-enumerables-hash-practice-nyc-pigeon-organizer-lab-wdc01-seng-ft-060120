require 'pry'


def pigeon_organizer(data)
  pigeon_data = data.reduce({}){|memo (k1, v1)
    v1.each{|(k2,v2)|
      v2.each{|name|
        memo[name]
        
        memo
      }
      memo
    }
    memo
  }
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