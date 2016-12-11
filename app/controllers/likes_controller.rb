class LikesController < ApplicationController
    def like
        university = University.find(params[:university_id])
        like = current_user.likes.build(university_id: university.id)
        like.save
        redirect_to university
    end
    def unlike
        university = University.find(params[:university_id])
        like = current_user.likes.find_by!(university_id: university.id)
        like.destroy!
        redirect_to university
    end
end
