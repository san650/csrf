_, bad = User.create [
  { name: 'Good guy', email: 'good@example.com', password: 'secret' },
  { name: 'Bad guy', email: 'bad@example.com', password: 'secret' }
]

bad.posts.create title: 'Check these funny cats', body: <<-EOF
<p><a href="http://localhost:9292" target="_blank">Click here!</a></p>
EOF
