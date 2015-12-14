Griddler.configure do |config|
  config.processor_class = EmailProcessor # CommentViaEmail
  config.processor_method = :process # :create_comment (A method on CommentViaEmail)
  config.email_service = :postmark # :cloudmailin, :postmark, :mandrill, :mailgun
end
