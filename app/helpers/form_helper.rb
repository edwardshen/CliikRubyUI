module FormHelper
    def tt
        return 'in tt'
    end

    def cbox(input)
        "#{check_box_tag 'helper_list[]', input}"
    end

end
