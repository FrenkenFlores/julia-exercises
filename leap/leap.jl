"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year)
	year % 4 == year % 100 == year % 400 == 0 && return true
	year % 4 == 0 && year % 100 != 0 && return true
	return false
end

