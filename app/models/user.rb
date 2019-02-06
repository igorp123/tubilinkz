class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :links

  # Переопределенный метод одного из родительских классов Devise
  # Отличается от родителького только тем, что использует .deliver_later
  # что кладет отправку почты в очередь фоновых задач
  # https://stackoverflow.com/questions/27518070/active-job-with-rails-4-and-devise
  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end
end
