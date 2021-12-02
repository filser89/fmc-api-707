json.story do
  json.id @story.id
  json.name @story.name
  json.text @story.text
  json.date @story.created_at.strftime("%A, %d %b %Y %l:%M %p")
end
