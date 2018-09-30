class CasesController < ApplicationController
    
    def index
        @cases = Case.all
        gon.cases = @cases
    end
end
