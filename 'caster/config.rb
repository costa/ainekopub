
cast {
  from ::MyPublishing #, ::MyLocalGit, ::MyEmoTwitter
  to ::MyLiveJournal, tags('life', ['personal', 'log'])
  to ::MyProBlogger, tags(['professional', 'log'], 'work', 'software')
  #to ::MyLocalGit, all
}

#::MySpecialCaster = cast {
#  from ::MySomething
#  to ::MyDailyWTF, tag('wtf')
#}
