class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :encryptable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
    has_one :profile, :dependent => :destroy
    has_one :wish_profile, :dependent => :destroy
    has_one :what_to_do, :dependent => :destroy
    has_one :outfit_style, :dependent => :destroy
    has_one :hairstyle, :dependent => :destroy
    has_one :outdoor_activity, :dependent => :destroy
    has_one :indoor_activity, :dependent => :destroy
    has_one :city, :dependent => :destroy
    has_one :way_to_travel, :dependent => :destroy
    has_one :happy_thought, :dependent => :destroy
    has_one :wish_outfit_style, :dependent => :destroy
    has_one :wish_hairstyle, :dependent => :destroy
    has_one :wish_outdoor_activity, :dependent => :destroy
    has_one :wish_indoor_activity, :dependent => :destroy
    has_one :wish_city, :dependent => :destroy
    has_one :wish_way_to_travel, :dependent => :destroy

    def add_profile(gender, birthday, height, location, date_location, color)
        p = self.build_profile(:gender => gender, :birthday => birthday, :height => height, :location => location, :date_location => date_location, :color => color)
        p.save!
    end

    def add_wish_profile(gender, age_from, age_to, height_from, height_to)
        w = self.build_wish_profile(:gender => gender, :age_from =>age_from, :age_to => age_to, :height_from => height_from, :height_to => height_to)
        w.save!
    end

    def add_what_to_do (to_do_list, payment)
        w = self.build_what_to_do()
        w.payment = payment
        add_general(w, to_do_list)
    end

    def add_outfit_style(outfit_style_list)
        o = self.build_outfit_style()
        add_general(o, outfit_style_list)
    end

    def add_hairstyle(hairstyle_list)
        h = self.build_hairstyle()
        add_general(h, hairstyle_list)
    end

    def add_outdoor_activity(activity_list)
        o = self.build_outdoor_activity()
        add_general(o, activity_list)
    end

    def add_indoor_activity(activity_list)
        i = self.build_indoor_activity()
        add_general(i, activity_list)
    end

    def add_city(city_list)
        c = self.build_city()
        add_general(c, city_list)
    end

    def add_way_to_travel(way_to_travel_list)
        w = self.build_way_to_travel()
        add_general(w, way_to_travel_list)
    end

    def add_happy_thought(happy_thought)
        h = self.build_happy_thought()
        h.happy_thought = happy_thought
#        for i in (0..happy_thought_list.length-1)
#            eval("h.update_attributes(:happy_thought_#{i+1} => happy_thought_list[#{i}])")
#        end
        h.save!
    end




    def add_wish_outfit_style(outfit_style_list)
        o = self.build_wish_outfit_style()
        add_general(o, outfit_style_list)
    end

    def add_wish_hairstyle(hairstyle_list)
        h = self.build_wish_hairstyle()
        add_general(h, hairstyle_list)
    end

    def add_wish_outdoor_activity(activity_list)
        o = self.build_wish_outdoor_activity()
        add_general(o, activity_list)
    end

    def add_wish_indoor_activity(activity_list)
        i = self.build_wish_indoor_activity()
        add_general(i, activity_list)
    end

    def add_wish_city(city_list)
        c = self.build_wish_city()
        add_general(c, city_list)
    end

    def add_wish_way_to_travel(way_to_travel_list)
        w = self.build_wish_way_to_travel()
        add_general(w, way_to_travel_list)
    end

protected
    def add_general(builder, item_list)
        unless item_list
            item_list = []
        end
        item_string = item_list.join(', ')
        builder.all_selected = item_string
        item_list.each do |i|
            builder.update_attributes(i => true)
        end
        builder.save!
    end
end
