tokens <- data_frame(text = merged_data$Text[1]) %>% unnest_tokens(word, text)
tokens
tokens%>%
  inner_join(get_sentiments("bing"))%>%
  count(sentiment)%>%
  spread(sentiment, n, fill = 0) -> x



cbind(merged_data[1,], x)



print(tweet)
tokens%>%
  inner_join(get_sentiments("bing"))%>%
  count(sentiment)%>%
  spread(sentiment, n, fill = 0) -> rating
cbind(tweet, rating)