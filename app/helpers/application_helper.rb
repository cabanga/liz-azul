module ApplicationHelper
    def scout_year(started_at)
        DateTime.now.strftime("%Y").to_i - started_at&.strftime("%Y").to_i || 0
    end
end
