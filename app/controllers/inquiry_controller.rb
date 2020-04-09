class InquiryController < ApplicationController
  def index
    # 入力画面を表示
    @inquiry = Inquiry.new

  end
 
  def confirm
    @inquiry = Inquiry.new(inquiry_params)
  end
 


  def thanks
    @inquiry = Inquiry.create(inquiry_params)
    # メール送信
    InquiryMailer.send_mail(@inquiry).deliver_now
    # 完了画面を表示
    render :action => 'thanks'
  end

  private
  def inquiry_params
  params.require(:inquiry).permit(:name,:message )
  end

end

