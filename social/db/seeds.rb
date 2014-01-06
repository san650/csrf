_, bad = User.create [
  { name: 'Good Guy', email: 'good@example.com', password: 'secret' },
  { name: 'Bad Guy', email: 'bad@example.com', password: 'secret' }
]

bad.posts.create [
  { title: 'Check these funny cats', body: '[Click here!](http://localhost:9292)' },
  { title: 'More funny cats', body: '[Click here!](http://localhost:9292)' }
]
