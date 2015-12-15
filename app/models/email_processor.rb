class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    if List.exists?(fromAddress: @email.from[:email])
      list = List.find_by fromAddress:(@email.from[:email])
      post_create(list, @email)
    else
      List.create!(
        fromAddress: @email.from[:email],
      )
      list = List.find_by fromAddress:(@email.from[:email])
      post_create(list, @email)
    end
  end
  
  def post_create(list,email)
    email.raw_html.gsub!(/\r\n/,'').gsub!(/\t/, '')
    email.raw_html.gsub!(/[\\"]/,'')
    list.posts.create!(
      subject: email.subject,
      body: email.raw_html,
      from_email: email.from[:email],
      to_email: email.to.first[:email]
    )
  end
end
