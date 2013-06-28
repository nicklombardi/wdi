
food = {}
=> {}

food[:vegetables] = []
=> []

vegetable = { :name => 'eggplant', :color => 'purple' }
}
=> {:name=>"eggplant", :color=>"purple"}
food[:vegetables]
=> nil
food[:vegetables] << vegetable
=> [{:name=>"eggplant", :color=>"purple"}]

vegetable = { :name => 'cucumber', :color => 'green' }
}
=> {:name=>"cucumber", :color=>"green"}
food[:vegetables] << vegetable
=> [{:name=>"eggplant", :color=>"purple"}, {:name=>"cucumber", :color=>"green"}]

food
=> {:vegetables=>
  [{:name=>"eggplant", :color=>"purple"},
   {:name=>"cucumber", :color=>"green"}]}

vegetable = {:name => 'onion', :color => 'red'}
=> {:name=>"onion", :color=>"red"}
food[:vegetables] << vegetable
=> [{:name=>"eggplant", :color=>"purple"},
 {:name=>"cucumber", :color=>"green"},
 {:name=>"onion", :color=>"red"}]

food
=> {:vegetables=>
  [{:name=>"eggplant", :color=>"purple"},
   {:name=>"cucumber", :color=>"green"},
   {:name=>"onion", :color=>"red"}]}

food[:legumes] = []
=> []
food[:legumes]
=> []
legume = { :name => 'kidney', :color => 'red'}
=> {:name=>"kidney", :color=>"red"}
legume
=> {:name=>"kidney", :color=>"red"}

food[:legumes] << legume
=> [{:name=>"kidney", :color=>"red"}]

food
=> {:vegetables=>
  [{:name=>"eggplant", :color=>"purple"},
   {:name=>"cucumber", :color=>"green"},
   {:name=>"onion", :color=>"red"}],
 :legumes=>[{:name=>"kidney", :color=>"red"}]}