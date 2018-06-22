class Manager < ActiveRecord::Base
	mount_uploader :file_txt, FileTxtUploader

end
