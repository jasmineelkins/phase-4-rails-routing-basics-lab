class GradesController < ApplicationController
    def index
        return json: Grades.all
    end
end
