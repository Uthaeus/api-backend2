class Meetup < ApplicationRecord
    validates_presence_of :title, :description, :location, :time, :date 

    mount_uploader :main_image, MeetupUploader
    mount_uploader :thumb_image, MeetupUploader
end
