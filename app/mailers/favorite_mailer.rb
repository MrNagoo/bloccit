class FavoriteMailer < ApplicationMailer
  default from: "aaron.nagucki@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@blooming-caverns-5675.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["References"] = "<post/#{post.id}@your-app-name.example>"

    @user = user
    @post = post
    @comment = comment

 # #19
    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
