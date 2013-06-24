
food = {}
=> {}
vegetable = { :name => 'eggplant', :color => 'purple' }
}
=> {:name=>"eggplant", :color=>"purple"}
food[:vegetables]
=> nil
food[:vegetables] = []
=> []
food[:vegetables] << vegetable
=> [{:name=>"eggplant", :color=>"purple"}]