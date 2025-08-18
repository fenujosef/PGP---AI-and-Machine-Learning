# AI-Driven Sentiment Analysis for Stock Price Prediction
This project focuses on leveraging Natural Language Processing (NLP) and AI to analyze the impact of news on stock prices in the financial industry. The startup aims to enhance investment strategies by automatically extracting and interpreting sentiment from large volumes of financial news related to a NASDAQ-listed company.

### Business Context
Stock prices are heavily influenced by financial performance, innovations, market sentiment, and media coverage. However, the high volume and unstructured nature of news articles make it challenging for analysts to interpret their impact effectively. Automating sentiment analysis allows investment firms to transform raw text into actionable insights, aiding in more informed trading decisions.

### Objective
Develop an AI-driven sentiment analysis system to classify financial news into positive, neutral, or negative sentiment.

Aggregate and summarize news sentiment at a weekly level to identify trends and align with stock price movements.

Enhance stock price prediction models by integrating sentiment features with historical stock price and trading volume data.

Empower financial analysts with tools that deliver actionable insights for optimized investment strategies.

### Data Description
Date: Release date of the news article.

News: Text content of financial news articles.

Open, High, Low, Close: Stock price values (in USD) for the day.

Volume: Number of shares traded daily.

Label: Sentiment polarity of the news (-1: Negative, 0: Neutral, 1: Positive).

### Approach
Text Preprocessing & Feature Engineering: Tokenization, stopword removal, lemmatization, TF-IDF/word embeddings.

Sentiment Classification: Built machine learning and deep learning models (e.g., Logistic Regression, LSTM, Transformer-based models) to classify news sentiment.

Stock Price Correlation: Merged sentiment scores with historical stock data to uncover patterns.

Weekly Aggregation & Prediction: Summarized sentiment trends at the weekly level for improved predictive modeling of stock prices.

### Outcome & Impact
Developed a robust sentiment analysis system that accurately interprets stock-related news.

Improved prediction accuracy for stock price trends by incorporating market sentiment signals.

Enabled financial analysts to make data-driven investment decisions with real-time insights.

Delivered a scalable solution to transform large-scale financial text data into actionable intelligence for the investment domain.

