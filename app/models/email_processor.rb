class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    p @email.from[:email]
    p @email.subject
    # p @email.raw_html
    # testJson = {"html" => @email.raw_html}
    # testJson.to_json
    # p JSON.parse([@email.raw_html].to_json).first
    @email.raw_html.gsub!(/\r\n/,'').gsub!(/\t/, '')
    @email.raw_html.gsub!(/[\\"]/,'')
    p @email.raw_html
    # JSON.parse([ 'foo' ].to_json).first

    # all of your application-specific code here - creating models,
    # processing reports, etc

    # here's an example of model creation
    # user = User.find_by_email(@email.from[:email])
    # user.posts.create!(
    #   subject: @email.subject,
    #   body: @email.body
    # )
  end
end
