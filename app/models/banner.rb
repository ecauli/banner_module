class Banner < ActiveRecord::Base
  has_attached_file :arquivo,
                    :styles => {
  					          :show=>				"200x200>",
                      :thumb=> 			"100x100#",
                      :leaderboard  =>	"728x90#",
                      :fullbanner => 		"468x60#",
                      :halfbanner =>   	"234x60#",
                      :rectangle =>   		"180x150#",
                      :squarebutton =>   	"125x125#",
                      :skyscraper =>   	"120x600#",
                      :wideskyscraper =>  "160x600#",
  					          :largerectangle =>   "120x600#",
                      :mediumrectangle =>  "160x600#",
  					          :big =>				 "725x220#",
                      :normal =>   		 "580x176#",
                      :large => "700x700>"
                    }, :processors => [:cropper]  
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h                      
  validates_attachment_presence :arquivo
  validates_attachment_size :arquivo, :less_than => 5.megabytes
  validates_attachment_content_type :arquivo, :content_type =>['image/jpeg', 'image/png','image/pjpeg', 'image/x-png']
  after_update :reprocess_arquivo, :if => :cropping?  
  def cropping?  
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?  
  end  
  
  def arquivo_geometry(style = :original)  
    @geometry ||= {}  
    @geometry[style] ||= Paperclip::Geometry.from_file(arquivo.path(style))  
  end  
  
  private  
  def reprocess_arquivo  
    arquivo.reprocess!  
  end 
end
