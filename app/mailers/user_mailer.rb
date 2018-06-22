class UserMailer < ApplicationMailer
     default from: 'no-reply@jungle.com'
 
     def welcome_email(email, order_details)
         @email = email
         @order = order_details
 
         @items = LineItem.where(order_id: @order.id)
 
         mail(to: @email, subject: "Jungle | Purchase Receipt (Order ##{@order.id})")
      end
  end
