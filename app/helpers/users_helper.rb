module UsersHelper
    
<<<<<<< HEAD
=======
  # 該当ユーザーのメールアドレスに対応するGravatarの画像URLを返す
>>>>>>> fadab1e8e4fc52db75c637b3b03b82a74dd076b4
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
