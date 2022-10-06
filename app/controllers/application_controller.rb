class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "my_templates/homepage.html.erb" })
  end
  #text
  def text
      #Parameters: {"content"=>"hi there"} This is the querey that we can use on the stie to 
      @user_text = params.fetch("content")
      @qrcode = RQRCode::QRCode.new(@user_text)

    render({ :template => "my_templates/text.html.erb"})

  end

  #url
  def url
    render({ :template => "my_templates/url.html.erb"})
  end
  
  #wifi
  def wifi
    render({ :template => "my_templates/wifi.html.erb"})
  end
  
  #sms
  def sms
    render({ :template => "my_templates/sms.html.erb"})
  end
end
