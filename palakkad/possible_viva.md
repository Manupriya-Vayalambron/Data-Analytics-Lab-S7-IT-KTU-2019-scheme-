# ITL411 Data Analytics Lab -- Complete Viva Questions and Answers

## S7 Information Technology \| Experiment-wise viva preparation

## 1. Data Analysis Using MS Excel

1.  **What is MS Excel?**\
    A spreadsheet application used to store, calculate, analyse and
    visualize data.

2.  **What is Analysis ToolPak?**\
    An Excel add-in that provides statistical and engineering analysis
    tools.

3.  **How do you enable Analysis ToolPak?**\
    File → Options → Add-ins → Excel Add-ins → Go → select Analysis
    ToolPak.

4.  **What are descriptive statistics?**\
    Numerical summaries such as mean, median, mode, range and standard
    deviation.

5.  **What is mean?**\
    The sum of observations divided by the number of observations.

6.  **What is median?**\
    The middle value after arranging observations in order.

7.  **What is mode?**\
    The most frequently occurring value.

8.  **What is standard deviation?**\
    A measure of how spread out values are around the mean.

9.  **What is a histogram?**\
    A graph showing the frequency distribution of numerical data using
    bins.

10. **What is a bin?**\
    An interval used to group numerical values in a histogram.

11. **What is regression analysis?**\
    A method to estimate the relationship between a dependent variable
    and predictor variables.

12. **What is a dependent variable?**\
    The variable that we want to explain or predict.

13. **What is an independent variable?**\
    A variable used to explain or predict the dependent variable.

14. **What is a trendline?**\
    A line showing the general trend or relationship in a chart.

15. **How do you create a regression chart in Excel?**\
    Insert a scatter plot and add a trendline from the chart elements.

## 2. Basic Concepts of R

1.  **What is R?**\
    A programming language for statistical computing, data analysis and
    visualization.

2.  **What is RStudio?**\
    An IDE used to write and execute R programs.

3.  **What is a loop?**\
    A structure that repeatedly executes statements.

4.  **Name the loops in R.**\
    for, while and repeat.

5.  **Difference between for and while?**\
    for iterates over a sequence; while repeats while a condition is
    TRUE.

6.  **What is repeat loop?**\
    A loop that runs continuously until stopped using break.

7.  **Difference between break and next?**\
    break terminates the loop; next skips the current iteration.

8.  **What is a vector?**\
    A one-dimensional structure containing elements of the same basic
    type.

9.  **Which function creates a vector?**\
    c().

10. **What is a matrix?**\
    A two-dimensional structure containing elements of the same data
    type.

11. **Which function creates a matrix?**\
    matrix().

12. **What is a data frame?**\
    A tabular structure where columns can have different data types.

13. **Difference between matrix and data frame?**\
    A matrix has one data type; a data frame can have different types in
    different columns.

14. **What is a factor?**\
    A structure used to represent categorical data.

15. **What are factor levels?**\
    The distinct categories represented by a factor.

16. **What does table() do?**\
    Displays category frequencies.

17. **What does read.csv() do?**\
    Reads a CSV file into R.

18. **What does write.csv() do?**\
    Writes a data frame to a CSV file.

19. **What does readLines() do?**\
    Reads lines from a text file.

20. **What does writeLines() do?**\
    Writes text lines to a file.

21. **What does getwd() do?**\
    Displays the current working directory.

22. **What does setwd() do?**\
    Changes the working directory.

23. **What does head() do?**\
    Displays the first six rows by default.

24. **What does str() do?**\
    Displays the structure and data types of an object.

25. **What does summary() do?**\
    Provides a statistical summary.

26. **What is correlation?**\
    A measure of the strength and direction of relationship between two
    variables.

27. **What is the range of correlation?**\
    -1 to +1.

28. **What is positive correlation?**\
    Both variables tend to increase or decrease together.

29. **What is negative correlation?**\
    One variable tends to decrease when the other increases.

30. **What is covariance?**\
    A measure of how two variables vary together.

31. **Difference between correlation and covariance?**\
    Correlation is standardized between -1 and +1; covariance is
    scale-dependent.

32. **What is IQR?**\
    The difference between the third and first quartiles, Q3 − Q1.

33. **What is normal distribution?**\
    A symmetrical, bell-shaped distribution centred around its mean.

34. **What does rnorm() do?**\
    Generates random values from a normal distribution.

35. **How do you identify missing values?**\
    Using is.na().

36. **What does na.omit() do?**\
    Removes observations containing missing values.

37. **What does na.rm=TRUE mean?**\
    Ignore missing values during a calculation.

38. **What is normalization?**\
    Scaling numerical values to a common range.

39. **What is min-max normalization?**\
    (x − min(x))/(max(x) − min(x)), commonly scaling values to 0--1.

40. **What does lapply() do?**\
    Applies a function to each element and returns a list.

41. \*\*Difference between \* and %\*%?\*\*\

-   performs element-wise multiplication; %\*% performs matrix
    multiplication.

42. **What does t() do?**\
    Returns the transpose of a matrix.

43. **What do nrow() and ncol() return?**\
    Number of rows and columns.

44. **What does dim() return?**\
    Dimensions of an object.

45. **What does %% do?**\
    Returns the remainder after division.

## 3. Data Visualization with R

1.  **What is data visualization?**\
    Graphical representation of data to identify patterns, trends and
    relationships.

2.  **What is ggplot2?**\
    An R package for creating graphics using the Grammar of Graphics.

3.  **What is Grammar of Graphics?**\
    An approach that builds plots by combining data, aesthetic mappings
    and geometric layers.

4.  **What does ggplot() do?**\
    Initializes a plot using a dataset and mappings.

5.  **What is aes()?**\
    Maps variables to visual properties such as x, y, colour and size.

6.  **What does geom_bar() do?**\
    Creates a bar chart, usually counting observations in categories.

7.  **What does geom_boxplot() do?**\
    Displays median, quartiles, spread and possible outliers.

8.  **What does geom_histogram() do?**\
    Displays the frequency distribution of a numerical variable.

9.  **What does geom_line() do?**\
    Connects observations to show a trend.

10. **What does geom_point() do?**\
    Displays observations as points in a scatter plot.

11. **Difference between bar plot and histogram?**\
    Bar plots generally show categories; histograms show numerical
    values grouped into bins.

12. **Difference between histogram and box plot?**\
    Histogram shows distribution shape; box plot summarizes quartiles
    and possible outliers.

13. **What does factor(cyl) do?**\
    Treats cylinder count as a categorical variable.

14. **What is binwidth?**\
    The width of each histogram interval.

15. **What does print(p) do?**\
    Displays the ggplot object.

16. **Which dataset is used?**\
    The built-in mtcars dataset.

17. **What does mpg mean?**\
    Miles per gallon, a measure of fuel efficiency.

18. **What does wt mean?**\
    Vehicle weight, in thousands of pounds in mtcars.

19. **What does cyl mean?**\
    Number of cylinders in the engine.

20. **What trend is seen between weight and mileage?**\
    Heavier cars generally tend to have lower fuel mileage.

## 4. Data Reshaping and Merging Using dplyr and tidyr

1.  **What is dplyr?**\
    An R package for data manipulation and transformation.

2.  **What is tidyr?**\
    An R package for organizing and reshaping data.

3.  **What is tidy data?**\
    Each variable has a column, each observation a row and each value a
    cell.

4.  **What is %\>%?**\
    The pipe operator passes the result on its left as input to the
    function on its right.

5.  **What does View() do?**\
    Opens a spreadsheet-like view of a dataset.

6.  **What does filter() do?**\
    Selects rows satisfying conditions.

7.  **What does arrange() do?**\
    Sorts rows based on columns.

8.  **How do you sort descending?**\
    Use arrange(data, desc(column)).

9.  **What does select() do?**\
    Selects columns.

10. **What does starts_with() do?**\
    Selects column names beginning with specified text.

11. **What does ends_with() do?**\
    Selects column names ending with specified text.

12. **What does contains() do?**\
    Selects column names containing specified text.

13. **What does mutate() do?**\
    Adds or modifies columns while retaining other columns.

14. **What does transmute() do?**\
    Creates columns and keeps only the selected or newly created
    columns.

15. **What does summarize() do?**\
    Calculates summary values and reduces data to summary rows.

16. **What does group_by() do?**\
    Groups rows so summary operations can be performed for each group.

17. **Difference between mutate and summarize?**\
    mutate preserves rows; summarize reduces data to summary values.

18. **What is wide data?**\
    Different variables are stored in separate columns.

19. **What is long data?**\
    Variable names and values are stored in separate columns across
    multiple rows.

20. **What does gather() do?**\
    Converts wide data to long format; its modern replacement is
    pivot_longer().

21. **What does spread() do?**\
    Converts long data to wide format; its modern replacement is
    pivot_wider().

22. **What does separate() do?**\
    Splits one column into multiple columns using a separator.

23. **What does unite() do?**\
    Combines multiple columns into one column.

24. **Difference between separate and unite?**\
    separate splits a column; unite combines columns.

25. **Which dataset is used?**\
    flights from nycflights13, with sample tables table2, table3 and
    table4a.

26. **What does desc() do?**\
    Sorts values in descending order.

27. **What does ends_with('delay') select?**\
    Columns whose names end with delay.

28. **Why reshape data?**\
    To make data easier to analyse, visualize and process.

## 5. Linear Regression and Logistic Regression

1.  **What is regression?**\
    A statistical method for modelling the relationship between a
    response and predictors.

2.  **What is linear regression?**\
    Predicts a continuous numerical variable using one or more
    predictors.

3.  **What is simple linear regression?**\
    Uses one independent variable.

4.  **What is multiple linear regression?**\
    Uses two or more independent variables.

5.  **What is the simple linear regression equation?**\
    Y = a + bX; a is intercept and b is slope.

6.  **What is an intercept?**\
    Predicted Y when X is zero.

7.  **What is a regression coefficient?**\
    Expected change in response for a one-unit increase in a predictor,
    holding other predictors constant.

8.  **Which R function fits linear regression?**\
    lm().

9.  **What does Sales \~ TV mean?**\
    Sales is the response and TV advertising is the predictor.

10. **What does Sales \~ TV + Radio mean?**\
    Sales is modelled using TV and Radio advertising.

11. **What does summary(model) show?**\
    Coefficients, standard errors, p-values, R-squared and residual
    information.

12. **What is a p-value?**\
    A measure of evidence against a specified null hypothesis.

13. **What is R-squared?**\
    Proportion of variation in the response explained by the model.

14. **What is adjusted R-squared?**\
    R-squared adjusted for the number of predictors.

15. **What is RMSE?**\
    Root Mean Squared Error, measuring the size of prediction errors.

16. **What does lower RMSE indicate?**\
    Better prediction performance on the evaluated data.

17. **What is training data?**\
    Data used to fit a model.

18. **What is testing data?**\
    Separate data used to evaluate a trained model.

19. **Why split data?**\
    To estimate performance on unseen observations.

20. **What does set.seed(123) do?**\
    Makes random operations reproducible.

21. **What does predict() do?**\
    Generates predictions from a fitted model.

22. **What does geom_smooth(method='lm') do?**\
    Adds a fitted linear regression line to a ggplot.

23. **What was the TV-Sales inference?**\
    TV advertising had a positive relationship with Sales in the
    recorded analysis.

24. **What was the Newspaper-Sales inference?**\
    Newspaper showed a weaker relationship with Sales than TV and Radio.

25. **Why use multiple linear regression?**\
    To study the combined relationship of several predictors with a
    continuous response.

26. **What is logistic regression?**\
    A method that estimates the probability of a categorical outcome,
    commonly binary.

27. **Difference between linear and logistic regression?**\
    Linear predicts continuous values; logistic predicts class
    probabilities.

28. **Which R function is used for logistic regression?**\
    glm().

29. **What does family=binomial specify?**\
    A binomial model, commonly used for binary logistic regression.

30. **What does type='response' return?**\
    Predicted probabilities on the response scale, generally from 0 to
    1.

31. **What is a classification threshold?**\
    A probability cut-off used to assign a class label.

32. **What threshold is used in the lab?**\
    0.5; probability \>= 0.5 is Yes, otherwise No.

33. **What is a confusion matrix?**\
    A table comparing actual and predicted classes.

34. **Define TP.**\
    True Positive: positive correctly predicted as positive.

35. **Define TN.**\
    True Negative: negative correctly predicted as negative.

36. **Define FP.**\
    False Positive: negative incorrectly predicted as positive.

37. **Define FN.**\
    False Negative: positive incorrectly predicted as negative.

38. **What is accuracy?**\
    (TP + TN)/(TP + TN + FP + FN).

39. **What is precision?**\
    TP/(TP + FP); proportion of predicted positives that are correct.

40. **What is recall?**\
    TP/(TP + FN); proportion of actual positives correctly identified.

41. **What is F1-score?**\
    Harmonic mean of precision and recall.

42. **Which datasets are used?**\
    Advertising data, credit card balance data and the Default dataset.

43. **What was the Default-versus-Balance inference?**\
    Higher balance was associated with a higher probability of default.

44. **What was the Default-versus-Income inference?**\
    Higher income was associated with a lower probability of default.

45. **Why convert the target into a factor?**\
    To represent outcomes as categorical classes such as No and Yes.

## 6. Text Data Analysis

1.  **What is text mining?**\
    Extracting useful information and patterns from unstructured text.

2.  **Which dataset is used?**\
    Yelp business and customer review data.

3.  **Why filter coffee-related reviews?**\
    To analyse words frequently used in reviews associated with coffee
    businesses.

4.  **What does grepl() do?**\
    Searches for a pattern and returns TRUE or FALSE for each element.

5.  **What does ignore.case=TRUE mean?**\
    Search is case-insensitive.

6.  **What does subset() do?**\
    Selects rows satisfying a condition.

7.  **What is a corpus?**\
    A collection of text documents for analysis.

8.  **Which function creates the corpus?**\
    VCorpus(VectorSource(review)).

9.  **What is the tm package?**\
    An R package for text mining and preprocessing.

10. **What is text preprocessing?**\
    Cleaning and preparing raw text before analysis.

11. **Why convert text to lowercase?**\
    To treat differently capitalized versions of a word as the same
    word.

12. **What does removePunctuation() do?**\
    Removes punctuation marks.

13. **What does removeNumbers() do?**\
    Removes numbers.

14. **What are stop words?**\
    Common words such as the, is and a that often add little value to
    frequency analysis.

15. **What does removeWords() do?**\
    Removes specified words, such as English stop words.

16. **What does stripWhitespace() do?**\
    Removes extra whitespace.

17. **What is a Term-Document Matrix?**\
    A matrix with terms as rows, documents as columns and term
    frequencies as entries.

18. **Which function creates a TDM?**\
    TermDocumentMatrix().

19. **What does as.matrix() do?**\
    Converts the TDM object into a matrix.

20. **What does rowSums() calculate here?**\
    Total frequency of each word across documents.

21. **Why sort in decreasing order?**\
    To place the most frequent words first.

22. **What does head(word_freq, 20) do?**\
    Selects the 20 most frequent words after sorting.

23. **What is a word cloud?**\
    A visualization where more frequent words appear larger.

24. **Which package creates the word cloud?**\
    wordcloud.

25. **Does word frequency indicate positive sentiment?**\
    No. Frequency indicates occurrence, not sentiment.

## 7. Descriptive Statistics and Data Visualization

1.  **What are descriptive statistics?**\
    Numerical summaries describing the main characteristics of data.

2.  **Which dataset is used?**\
    A sample vector of resting heart-rate observations.

3.  **Define mean.**\
    Arithmetic average of observations.

4.  **Define median.**\
    Middle observation after sorting.

5.  **Define mode.**\
    Most frequently occurring value.

6.  **Does R have a direct statistical mode function?**\
    No. R's mode() reports storage mode; the lab defines a custom
    statistical mode function.

7.  **What does unique(x) do?**\
    Returns distinct values.

8.  **What does which.max() do?**\
    Returns the position of the maximum value.

9.  **What does tabulate() do?**\
    Counts occurrences of integer-coded values.

10. **What is range?**\
    The interval from minimum to maximum; range width is max minus min.

11. **What does range() return?**\
    The minimum and maximum values.

12. **What does diff(range(x)) calculate?**\
    Maximum minus minimum.

13. **What is variance?**\
    A measure of spread based on squared deviations from the mean.

14. **Which function calculates variance?**\
    var().

15. **What is standard deviation?**\
    Square root of variance, expressed in the original unit.

16. **Which function calculates standard deviation?**\
    sd().

17. **What is a quartile?**\
    A value dividing ordered data into four parts.

18. **What is Q1?**\
    The 25th percentile.

19. **What is Q3?**\
    The 75th percentile.

20. **What is IQR?**\
    Q3 minus Q1, the spread of the middle 50%.

21. **How are potential outliers identified?**\
    Below Q1 − 1.5×IQR or above Q3 + 1.5×IQR.

22. **What are the recorded outlier bounds?**\
    Lower bound 61.5 and upper bound 99.5.

23. **Were outliers found in the recorded heart-rate data?**\
    No; all observations were within the calculated bounds.

24. **What were the recorded mean, median and mode?**\
    Mean 80.8 bpm, median 80.5 bpm and mode 72 bpm.

25. **What were the recorded range, variance and SD?**\
    Range width 20 bpm, variance 38.91 and SD 6.24 bpm.

26. **Why use both histogram and box plot?**\
    Histogram shows distribution shape; box plot summarizes spread and
    possible outliers.

## 8. Decision Tree Based Classification

1.  **What is a Decision Tree?**\
    A supervised algorithm that predicts using a tree-like structure of
    decision rules.

2.  **Is Decision Tree supervised?**\
    Yes.

3.  **What are its main parts?**\
    Root node, decision/internal nodes, branches and leaf nodes.

4.  **What is root node?**\
    The first node representing the entire dataset.

5.  **What is a leaf node?**\
    A terminal node giving the final predicted class or value.

6.  **What is a branch?**\
    The outcome of a decision or condition.

7.  **Which dataset is used in the record?**\
    Carseats from the ISLR package.

8.  **How many observations are in Carseats?**\
    400 stores.

9.  **What is the target variable?**\
    HighSales, created from Sales.

10. **How is HighSales created?**\
    Sales \> 8 is Yes; Sales \<= 8 is No.

11. **Why convert HighSales into a factor?**\
    It is a categorical target for classification.

12. **Which package builds the model?**\
    rpart.

13. **What does rpart stand for?**\
    Recursive Partitioning and Regression Trees.

14. **Which function builds the tree?**\
    rpart().

15. **What does method='class' mean?**\
    It specifies classification.

16. **What does HighSales \~ . - Sales mean?**\
    HighSales is the target; all remaining variables except Sales are
    predictors.

17. **Why exclude Sales from predictors?**\
    HighSales is derived from Sales; including Sales causes target
    leakage.

18. **What is the split ratio?**\
    70% training and 30% testing.

19. **What does sample() do?**\
    Randomly selects row indices.

20. **What does predict(..., type='class') return?**\
    Predicted class labels.

21. **How is accuracy calculated?**\
    Correct predictions divided by total predictions, multiplied by 100
    for percentage.

22. **What is cross-validation?**\
    Repeated evaluation using different data folds to estimate model
    error.

23. **What is CP?**\
    Complexity parameter controlling tree complexity and split
    decisions.

24. **What does printcp() do?**\
    Displays the complexity parameter table and cross-validation
    information.

25. **What does plotcp() do?**\
    Plots cross-validation error against tree complexity.

26. **What is pruning?**\
    Removing unnecessary branches to simplify the tree and reduce
    overfitting.

27. **What does prune() do?**\
    Creates a smaller tree using a selected CP.

28. **How is best CP selected in the record?**\
    By choosing the CP with the minimum cross-validation error (xerror).

29. **Why compare original and pruned trees?**\
    To see whether a simpler tree has comparable or better test
    performance.

30. **Does pruning always improve accuracy?**\
    No; accuracy may increase, decrease or remain similar.

31. **What is overfitting?**\
    Learning training data too closely and performing poorly on unseen
    data.

32. **What does rpart.plot() do?**\
    Visualizes the decision tree.

## 9. K-Means Clustering

1.  **What is clustering?**\
    Grouping similar observations together.

2.  **Is K-means supervised?**\
    No, it is unsupervised.

3.  **What is K-means?**\
    An algorithm that partitions data into K groups based on distance
    from cluster centres.

4.  **Which dataset is used?**\
    The built-in USArrests dataset.

5.  **What does USArrests contain?**\
    Crime statistics for 50 US states.

6.  **Name its variables.**\
    Murder, Assault, UrbanPop and Rape.

7.  **Why scale before K-means?**\
    Distance-based clustering can be dominated by variables with larger
    scales.

8.  **Which function scales data?**\
    scale().

9.  **What does standardization do?**\
    Centres variables around zero and scales by standard deviation.

10. **What is a centroid?**\
    The centre of a cluster, calculated as the mean of its observations.

11. **What does centers specify in kmeans()?**\
    The number of clusters K.

12. **What does nstart specify?**\
    Number of random initial cluster configurations tried.

13. **Why use nstart=25?**\
    It tries multiple initial configurations and may find a better
    solution.

14. **Why set a seed?**\
    To make random initialization reproducible.

15. **What is WSS?**\
    Within-Cluster Sum of Squares, the total squared distance from
    observations to their cluster centres.

16. **What does lower WSS indicate?**\
    Observations are closer to their cluster centres.

17. **Does WSS generally decrease as K increases?**\
    Yes; adding clusters cannot increase the optimal within-cluster sum
    of squares.

18. **What is the Elbow Method?**\
    Plots WSS against K and selects a value near the bend where
    improvement starts slowing.

19. **Why is it called the Elbow Method?**\
    The curve often resembles an arm; the bend is the elbow.

20. **What is PCA?**\
    Principal Component Analysis reduces dimensions by transforming
    variables into principal components.

21. **Why use PCA here?**\
    To visualize four-dimensional data in two dimensions using PC1 and
    PC2.

22. **Which function performs PCA?**\
    prcomp().

23. **What are PC1 and PC2?**\
    The first two principal components, capturing the largest possible
    amounts of variation in sequence.

24. **What is factoextra?**\
    An R package for visualizing and interpreting multivariate analysis.

25. **What does fviz_cluster() do?**\
    Visualizes cluster assignments.

26. **What does fviz_nbclust() do?**\
    Helps choose the number of clusters using methods such as WSS.

27. **Difference between K=2 and K=4?**\
    K=2 forms two groups; K=4 forms four more detailed groups.

28. **What does k2\$cluster contain?**\
    Cluster assignment of each observation in the K=2 model.

29. **What does k2\$centers contain?**\
    The centres of the K=2 clusters.

30. **What does table(k2\$cluster) show?**\
    Number of observations in each cluster.

31. **Can standard K-means directly handle categorical data?**\
    No; standard K-means is designed for numerical data.

32. **Give one limitation of K-means.**\
    K must be chosen in advance and results may depend on
    initialization.

## 10. Data Visualization with Tableau Public

1.  **What is Tableau Public?**\
    A free platform for creating and sharing interactive visualizations.

2.  **What is a dimension?**\
    A qualitative field used to categorize data, such as region or
    customer name.

3.  **What is a measure?**\
    A quantitative field that can be aggregated, such as Sales or
    Profit.

4.  **Give examples of dimensions.**\
    Region, Segment, Category and Customer Name.

5.  **Give examples of measures.**\
    Sales, Profit, Quantity and Shipping Cost.

6.  **What is a discrete field?**\
    A field with separate values that creates headers in a view.

7.  **What colour represents discrete fields?**\
    Blue.

8.  **What is a continuous field?**\
    A field representing a continuous range that creates an axis.

9.  **What colour represents continuous fields?**\
    Green.

10. **Difference between blue and green pills?**\
    Blue is discrete; green is continuous.

11. **What is a calculated field?**\
    A new field created using a formula based on existing fields.

12. **What does DATEDIFF() do?**\
    Calculates the difference between two dates in a specified date
    unit.

13. **How is shipping delay calculated?**\
    DATEDIFF('day', \[Order Date\], \[Ship Date\]).

14. **How do you calculate average shipping delay?**\
    Create the delay field and aggregate it using Average.

15. **What is aggregation?**\
    Combining multiple values into a summary such as SUM, AVG, MIN or
    MAX.

16. **What is a stacked bar chart?**\
    A bar divided into segments representing subcategories.

17. **What is the Marks card?**\
    It controls colour, size, label, detail and shape.

18. **What are Rows and Columns shelves?**\
    Areas that arrange fields to construct a visualization.

19. **What is a dashboard?**\
    A view combining multiple visualizations.

20. **What is a worksheet?**\
    An individual visualization in Tableau.

21. **What was the regional sales inference?**\
    Average sales were highest in East and South and lower in Central
    and West.

22. **What percentage of total profit was associated with Corporate in
    the record?**\
    32.12%.

23. **How do you show percentage of total?**\
    Use Quick Table Calculation → Percent of Total, with the correct
    direction.

24. **Difference between dimension and measure?**\
    A dimension categorizes data; a measure is numeric and can be
    aggregated.

## 11. Big Data Tools and Techniques

1.  **What is Big Data?**\
    Datasets too large, fast or complex for traditional processing
    methods to handle efficiently.

2.  **What are the 5 Vs?**\
    Volume, Velocity, Variety, Veracity and Value.

3.  **What is Hadoop?**\
    An open-source framework for distributed storage and processing of
    large datasets.

4.  **What are the core Hadoop components?**\
    HDFS, YARN and MapReduce.

5.  **What is HDFS?**\
    Hadoop Distributed File System, the distributed storage layer.

6.  **What is the purpose of HDFS?**\
    Scalable and fault-tolerant storage across machines.

7.  **What is NameNode?**\
    It manages HDFS metadata, namespace and block information.

8.  **What is DataNode?**\
    It stores actual data blocks and performs block operations.

9.  **Difference between NameNode and DataNode?**\
    NameNode manages metadata; DataNodes store data blocks.

10. **What is an HDFS block?**\
    A fixed-size unit into which a file is divided for distributed
    storage.

11. **What is replication?**\
    Storing copies of blocks on multiple DataNodes for fault tolerance.

12. **What is fault tolerance?**\
    The ability to continue operating despite component failures.

13. **What is YARN?**\
    Yet Another Resource Negotiator, Hadoop's resource management and
    scheduling layer.

14. **What is ResourceManager?**\
    Manages cluster resources and allocates them to applications.

15. **What is NodeManager?**\
    Manages containers and monitors resources on an individual node.

16. **What is ApplicationMaster?**\
    Manages execution of a particular application and negotiates
    resources.

17. **What is a YARN container?**\
    A bundle of allocated resources in which an application task runs.

18. **What is Hive?**\
    A data warehouse system for querying and analysing structured data
    in Hadoop.

19. **What is HQL?**\
    Hive Query Language, an SQL-like language used by Hive.

20. **What is Apache Pig?**\
    A high-level platform for processing large datasets using data-flow
    scripts.

21. **What is Pig Latin?**\
    The scripting language used by Apache Pig.

22. **What is HBase?**\
    A distributed column-family NoSQL database built on Hadoop.

23. **Difference between Hive and HBase?**\
    Hive supports analytical/data-warehouse queries; HBase supports
    random real-time reads and writes.

24. **Difference between Hadoop and HDFS?**\
    Hadoop is the broader framework; HDFS is its storage component.

25. **Why configure SSH for Hadoop?**\
    It enables secure remote login and communication with cluster nodes.

26. **Why is Java required?**\
    Hadoop is written in Java and needs a compatible Java runtime.

27. **What is JAVA_HOME?**\
    Environment variable pointing to the Java installation directory.

28. **What is HADOOP_HOME?**\
    Environment variable pointing to the Hadoop installation directory.

29. **What is pseudo-distributed mode?**\
    Hadoop daemons run as separate processes on one machine, simulating
    a cluster.

30. **What is core-site.xml used for?**\
    Core configuration properties, including the default filesystem URI.

31. **What is hdfs-site.xml used for?**\
    HDFS settings such as replication and storage directories.

32. **What is mapred-site.xml used for?**\
    MapReduce settings, including the processing framework.

33. **What does hadoop version do?**\
    Displays installed Hadoop version and build information.

## 12. Word Count Using MapReduce

1.  **What is MapReduce?**\
    A programming model for processing large datasets in parallel across
    multiple machines.

2.  **Which framework provides MapReduce in this experiment?**\
    Apache Hadoop.

3.  **What is the Word Count problem?**\
    Counting how many times each distinct word occurs in input text.

4.  **What are the phases of MapReduce?**\
    Map, Shuffle and Sort, and Reduce.

5.  **What is a Mapper?**\
    Processes input records and generates intermediate key-value pairs.

6.  **What does the Mapper emit in Word Count?**\
    Each word as key and 1 as value.

7.  **What is tokenization?**\
    Splitting text into individual words or tokens.

8.  **What is a key-value pair?**\
    A data representation consisting of a key and its associated value.

9.  **Mapper output for 'Hello World Hello'?**\
    (Hello,1), (World,1), (Hello,1).

10. **What is Shuffle and Sort?**\
    Groups intermediate values belonging to the same key and sorts the
    keys.

11. **Why is Shuffle and Sort needed?**\
    It ensures all occurrences of a word are grouped for the same
    reducer.

12. **What is a Reducer?**\
    Receives grouped keys and values and combines them to produce final
    results.

13. **What does the Reducer do in Word Count?**\
    Adds values for each word to calculate its total frequency.

14. **Final output for 'Hello World Hello'?**\
    Hello 2; World 1.

15. **What is parallel processing?**\
    Simultaneous execution of parts of a task using multiple processors
    or nodes.

16. **What is a distributed system?**\
    Multiple connected computers working together to perform tasks.

17. **What is data locality?**\
    Moving computation close to stored data to reduce data transfer.

18. **What is HDFS's role in Word Count?**\
    Stores the input and output files for the MapReduce job.

19. **What is an input split?**\
    A logical portion of input data processed by a mapper.

20. **What is intermediate output?**\
    Key-value data generated by the Mapper before reduction.

21. **Can multiple reducers be used?**\
    Yes, different keys can be processed by different reducers.

22. **What if a word occurs in multiple input splits?**\
    Mappers emit partial counts; shuffle groups the word and a reducer
    calculates the total.

23. **Why is Word Count a common beginner example?**\
    It clearly demonstrates mapping, grouping and reducing.

## Common Viva Questions

1.  **What is data analytics?**\
    Examining data to discover useful information and support decisions.

2.  **What are the stages of data analysis?**\
    Collection, cleaning, exploration, analysis, visualization and
    interpretation.

3.  **What is structured data?**\
    Data organized in a predefined format, usually rows and columns.

4.  **What is unstructured data?**\
    Data without a fixed tabular structure, such as text, images, audio
    and video.

5.  **What is data preprocessing?**\
    Cleaning and preparing data before analysis.

6.  **What is EDA?**\
    Exploratory Data Analysis uses summaries and visualizations to
    understand data.

7.  **Why is data cleaning important?**\
    It improves data quality and reduces errors in analysis.

8.  **What is a variable?**\
    A characteristic measured for each observation.

9.  **What is an observation?**\
    One record or row in a dataset.

10. **What is a dataset?**\
    A collection of related observations and variables.

11. **Difference between classification and regression?**\
    Classification predicts categories; regression predicts numerical
    values.

12. **What is supervised learning?**\
    Learning from labelled data where the target is known.

13. **What is unsupervised learning?**\
    Finding patterns or groups without labelled target values.

14. **Give supervised algorithms from the lab.**\
    Linear regression, logistic regression and decision tree
    classification.

15. **Give an unsupervised algorithm from the lab.**\
    K-means clustering.

16. **What is a model?**\
    A mathematical or computational representation learned from data.

17. **What is prediction?**\
    Estimating outputs for new observations using a trained model.

18. **What is overfitting?**\
    Learning training data too closely and generalizing poorly.

19. **What is underfitting?**\
    A model is too simple to capture important patterns.

20. **What is reproducibility?**\
    Obtaining the same results using the same data, code and settings.

21. **What is an outlier?**\
    An observation unusually far from most other observations.

22. **What is an R package?**\
    A collection of functions, datasets and documentation extending R.

23. **How do you install a package?**\
    install.packages('package_name').

24. **How do you load a package?**\
    library(package_name).

25. **Difference between install and load?**\
    Installation downloads the package; loading makes its functions
    available in the current session.

26. **What is a function?**\
    A reusable block of code that performs a specific task.

27. **What is a formula in R modelling?**\
    It specifies the response and predictors, for example y \~ x1 + x2.

28. **What does dot (.) mean in a model formula?**\
    All remaining variables in the supplied data frame are used as
    predictors, subject to exclusions.

29. **Difference between head and tail?**\
    head displays first rows; tail displays last rows.

30. **Difference between read.csv and write.csv?**\
    read.csv imports a CSV; write.csv exports data to a CSV.

31. **Why should test data not be used for training?**\
    To keep evaluation independent and estimate performance on unseen
    data.

32. **Why is visualization important?**\
    It makes patterns, trends, relationships and unusual values easier
    to identify.

## Quick Formula Revision

  Measure                    Formula
  -------------------------- -----------------------------------------------
  Mean                       Sum of values / Number of values
  Range width                Maximum − Minimum
  IQR                        Q3 − Q1
  Lower outlier bound        Q1 − 1.5 × IQR
  Upper outlier bound        Q3 + 1.5 × IQR
  Min-max normalization      (x − min) / (max − min)
  Accuracy                   (TP + TN) / (TP + TN + FP + FN)
  Precision                  TP / (TP + FP)
  Recall                     TP / (TP + FN)
  F1-score                   2 × Precision × Recall / (Precision + Recall)
  Simple linear regression   Y = a + bX

## Important R Functions -- Quick Revision

  Function                        Use
  ------------------------------- -----------------------------------
  `c()`                           Create vector
  `matrix()`                      Create matrix
  `data.frame()`                  Create data frame
  `factor()`                      Represent categorical data
  `table()`                       Frequency table
  `read.csv()` / `write.csv()`    Read / write CSV
  `head()`                        First rows
  `str()`                         Structure
  `summary()`                     Summary
  `is.na()` / `na.omit()`         Find / remove missing values
  `scale()`                       Standardize data
  `cor()` / `cov()`               Correlation / covariance
  `ggplot()`                      Initialize plot
  `geom_bar()`                    Bar chart
  `geom_histogram()`              Histogram
  `geom_boxplot()`                Box plot
  `geom_point()`                  Scatter plot
  `filter()`                      Select rows
  `arrange()`                     Sort rows
  `select()`                      Select columns
  `mutate()`                      Add or modify columns
  `summarize()`                   Calculate summaries
  `gather()` / `pivot_longer()`   Wide to long
  `spread()` / `pivot_wider()`    Long to wide
  `separate()`                    Split column
  `unite()`                       Combine columns
  `lm()`                          Linear regression
  `glm()`                         Logistic/generalized linear model
  `predict()`                     Generate predictions
  `rpart()`                       Decision tree
  `prune()`                       Prune tree
  `kmeans()`                      K-means clustering
  `prcomp()`                      PCA
  `VCorpus()`                     Create corpus
  `TermDocumentMatrix()`          Create TDM
  `wordcloud()`                   Create word cloud

