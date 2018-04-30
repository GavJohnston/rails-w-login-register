module TimeAgoHelper
    def gavsgem(time, options = {})
        options[:class] ||= "gavsgem"
        content_tag(
            :time,
            time.to._s,
            options.merge(datetime: time.getgmt.iso8601)
           ) if time
    end
end