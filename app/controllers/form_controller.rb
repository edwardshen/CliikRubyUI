class FormController < ApplicationController
#    before_filter :find_user
    before_filter :authenticate_user!

    $test_mode =nil

    def tt
        @tt = params[:helper_list]
    end

    def my_profile
    end

    def get_profile
        @my_gender = params[:profile]['my_gender']
        @looking_for_gender = params[:wish_profile]['looking_for_gender']

        birth = params[:birthday]
        @birthday = birth.values_at('year', 'month', 'day').join('-')
        @looking_for_age_from = params[:wish_profile]['looking_for_age_from']
        @looking_for_age_to = params[:wish_profile]['looking_for_age_to']
        
        @my_height = params[:profile]['my_height']
        @looking_for_height_from = params[:wish_profile]['looking_for_height_from']
        @looking_for_height_to = params[:wish_profile]['looking_for_height_to']

        @my_location = params[:profile]['my_location']
        @date_location = params[:profile]['date_location']

        unless $test_mode
            current_user.add_profile(@my_gender, @birthday, @my_height, @my_location, @date_location, nil)
            current_user.add_wish_profile(@looking_for_gender, @looking_for_age_from, @looking_for_age_to, @looking_for_height_from, @looking_for_height_to)
        end
        redirect_to :controller => :form, :action => :imagine
    end

    def my_to_dos
    end

    def get_to_dos
        @selected = params[:to_do_list]
        @payment = params[:what_to_do]['payment']

        if $test_mode
#            redirect_to :controller => :form, :action => :my_outfit_style_guy
        else
            current_user.add_what_to_do(@selected, @payment)
#            if current_user.profile.gender == 'male'
#                redirect_to :controller => :form, :action => :my_outfit_style_guy
#            else
#                redirect_to :controller => :form, :action => :my_outfit_style_lady
#            end
        end
            redirect_to :controller => :form, :action => :my_outfit_style
    end

    def my_outfit_style
    end

    def get_outfit_style
        if params[:outfit_style_list]
            @selected = params[:outfit_style_list]
        else
            @selected = []
        end

        if $test_mode
#            redirect_to :controller => :form, :action => :my_hairstyle_guy
        else
            current_user.add_outfit_style(@selected)
#            if current_user.profile.gender == 'male'
#                redirect_to :controller => :form, :action => :my_hairstyle_guy
#            else
#                redirect_to :controller => :form, :action => :my_hairstyle_lady
#            end
        end
            redirect_to :controller => :form, :action => :wish_outfit_style
    end

    def wish_outfit_style
    end

    def get_wish_outfit_style
        if params[:outfit_style_list]
            @selected = params[:outfit_style_list]
        else
            @selected = []
        end

        if $test_mode
            redirect_to :controller => :form, :action => :my_hairstyle
        else
            current_user.add_wish_outfit_style(@selected)
            redirect_to :controller => :form, :action => :my_hairstyle
        end
    end

    def my_hairstyle
    end

    def get_hairstyle
        if params[:hairstyle_list]
            @selected = params[:hairstyle_list]
        else
            @selected = []
        end

        unless $test_mode
            current_user.add_hairstyle(@selected)
        end
        redirect_to :controller => :form, :action => :wish_hairstyle
    end

    def wish_hairstyle
    end

    def get_wish_hairstyle
        if params[:hairstyle_list]
            @selected = params[:hairstyle_list]
        else
            @selected = []
        end

        unless $test_mode
            current_user.add_wish_hairstyle(@selected)
        end
        redirect_to :controller => :form, :action => :my_favorite_activities_1
    end

    def my_favorite_activities_1
    end

    def get_favorite_activities_1
        @my_selected = params[:my_activity_list]
        @wish_selected = params[:wish_activity_list]

        if (@my_selected and @my_selected.length > 3) or (@wish_selected and @wish_selected.length > 3)
            flash[:notice] = 'choose only up to 3'
            redirect_to :controller => :form, :action => :my_favorite_activities_1
        else
            unless $test_mode
                current_user.add_outdoor_activity(@my_selected)
                current_user.add_wish_outdoor_activity(@wish_selected)
            end
            redirect_to :controller => :form, :action => :my_favorite_activities_2
        end

    end

    def my_favorite_activities_2
    end

    def get_favorite_activities_2
        @my_selected = params[:my_activity_list]
        @wish_selected = params[:wish_activity_list]

        if (@my_selected and @my_selected.length > 3) or (@wish_selected and @wish_selected.length > 3)
            flash[:notice] = 'choose only up to 3'
            redirect_to :controller => :form, :action => :my_favorite_activities_2
        else
            unless $test_mode
                current_user.add_indoor_activity(@my_selected) 
                current_user.add_wish_indoor_activity(@wish_selected) 
            end
            redirect_to :controller => :form, :action => :my_favorite_cities
        end
    end

    def my_favorite_cities
    end

    def get_favorite_cities
        @selected = params[:city_list]

        if @selected and @selected.length > 3
            flash[:notice] = 'choose only up to 3'
            redirect_to :controller => :form, :action => :my_favorite_cities
        else
            unless $test_mode
                current_user.add_city(@selected) 
            end
            redirect_to :controller => :form, :action => :my_favorite_ways_to_travel
        end
    end

    def my_favorite_ways_to_travel
    end

    def get_favorite_ways_to_travel
        @selected = params[:way_to_travel_list]

        if @selected and @selected.length > 5
            flash[:notice] = 'choose only up to 5'
            redirect_to :controller => :form, :action => :my_favorite_ways_to_travel
        else
            unless $test_mode
                current_user.add_way_to_travel(@selected)
            end
            redirect_to :controller => :form, :action => :my_happy_thoughts
        end
    end

    def my_happy_thoughts
    end

    def get_happy_thoughts
        happy_thought = params[:happy_thought]

        if $test_mode
            redirect_to :controller => :form, :action => :done
        else
            current_user.add_happy_thought(happy_thought)
            redirect_to :controller => :form, :action => :done
        end
    end





    def wish_favorite_activities_1
    end

    def get_wish_favorite_activities_1
        @selected = params[:activity_list]

        if @selected and @selected.length > 3
            flash[:notice] = 'choose only up to 3'
            redirect_to :controller => :form, :action => :wish_favorite_activities_1
        else
            unless $test_mode
                current_user.add_wish_outdoor_activity(@selected)
            end
            redirect_to :controller => :form, :action => :wish_favorite_activities_2
        end
    end

    def wish_favorite_activities_2
    end

    def get_wish_favorite_activities_2
        @selected = params[:activity_list]

        if @selected and @selected.length > 3
            flash[:notice] = 'choose only up to 3'
            redirect_to :controller => :form, :action => :wish_favorite_activities_2
        else
            unless $test_mode
                current_user.add_wish_indoor_activity(@selected)
            end
            redirect_to :controller => :form, :action => :done
        end
    end

    def wish_favorite_cities
    end

    def get_wish_favorite_cities
        @selected = params[:city_list]

        if @selected and @selected.length > 3
            flash[:notice] = 'choose only up to 3'
            redirect_to :controller => :form, :action => :wish_favorite_cities
        else
            unless $test_mode
                current_user.add_wish_city(@selected) 
            end
            redirect_to :controller => :form, :action => :wish_favorite_ways_to_travel
        end
    end

    def wish_favorite_ways_to_travel
    end

    def get_wish_favorite_ways_to_travel
        @selected = params[:way_to_travel_list]

        if @selected and @selected.length > 5
            flash[:notice] = 'choose only up to 5'
            redirect_to :controller => :form, :action => :wish_favorite_ways_to_travel
        else
            unless $test_mode
                current_user.add_wish_way_to_travel(@selected)
            end
            redirect_to :controller => :form, :action => :done
        end
    end

protected
    def find_user
        if @user.nil? && session[:id]
            @user = User.find(session[:id])
        else
           redirect_to :controller => :user, :action => :login
        end
    end

    def list_checking(parameters, candidate_list, deleted)
        candidate_list.delete_if {|x| deleted.include? x}

        selected = []
        parameters.each do |k, v|
            if v == '1'
                if candidate_list.include? k
                    selected << k
                end
            end
        end
        return selected
    end
end
