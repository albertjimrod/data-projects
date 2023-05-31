### Instrucciones:

Explore the dataset.

1. Print the first five rows using `DataFrame.head()` and the last five rows with `DataFrame.tail()`.


2. Find the number of rows and columns using `DataFrame.shape`.


3. Learn about each column from the documentation. You can also find useful documentation in this glossary and on WNBA's official page.



```python
import pandas as pd
```


```python
wnba = pd.read_csv('wnba.csv')
```


```python
wnba.head(5)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Name</th>
      <th>Team</th>
      <th>Pos</th>
      <th>Height</th>
      <th>Weight</th>
      <th>BMI</th>
      <th>Birth_Place</th>
      <th>Birthdate</th>
      <th>Age</th>
      <th>College</th>
      <th>...</th>
      <th>OREB</th>
      <th>DREB</th>
      <th>REB</th>
      <th>AST</th>
      <th>STL</th>
      <th>BLK</th>
      <th>TO</th>
      <th>PTS</th>
      <th>DD2</th>
      <th>TD3</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Aerial Powers</td>
      <td>DAL</td>
      <td>F</td>
      <td>183</td>
      <td>71.0</td>
      <td>21.200991</td>
      <td>US</td>
      <td>January 17, 1994</td>
      <td>23</td>
      <td>Michigan State</td>
      <td>...</td>
      <td>6</td>
      <td>22</td>
      <td>28</td>
      <td>12</td>
      <td>3</td>
      <td>6</td>
      <td>12</td>
      <td>93</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Alana Beard</td>
      <td>LA</td>
      <td>G/F</td>
      <td>185</td>
      <td>73.0</td>
      <td>21.329438</td>
      <td>US</td>
      <td>May 14, 1982</td>
      <td>35</td>
      <td>Duke</td>
      <td>...</td>
      <td>19</td>
      <td>82</td>
      <td>101</td>
      <td>72</td>
      <td>63</td>
      <td>13</td>
      <td>40</td>
      <td>217</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Alex Bentley</td>
      <td>CON</td>
      <td>G</td>
      <td>170</td>
      <td>69.0</td>
      <td>23.875433</td>
      <td>US</td>
      <td>October 27, 1990</td>
      <td>26</td>
      <td>Penn State</td>
      <td>...</td>
      <td>4</td>
      <td>36</td>
      <td>40</td>
      <td>78</td>
      <td>22</td>
      <td>3</td>
      <td>24</td>
      <td>218</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Alex Montgomery</td>
      <td>SAN</td>
      <td>G/F</td>
      <td>185</td>
      <td>84.0</td>
      <td>24.543462</td>
      <td>US</td>
      <td>December 11, 1988</td>
      <td>28</td>
      <td>Georgia Tech</td>
      <td>...</td>
      <td>35</td>
      <td>134</td>
      <td>169</td>
      <td>65</td>
      <td>20</td>
      <td>10</td>
      <td>38</td>
      <td>188</td>
      <td>2</td>
      <td>0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Alexis Jones</td>
      <td>MIN</td>
      <td>G</td>
      <td>175</td>
      <td>78.0</td>
      <td>25.469388</td>
      <td>US</td>
      <td>August 5, 1994</td>
      <td>23</td>
      <td>Baylor</td>
      <td>...</td>
      <td>3</td>
      <td>9</td>
      <td>12</td>
      <td>12</td>
      <td>7</td>
      <td>0</td>
      <td>14</td>
      <td>50</td>
      <td>0</td>
      <td>0</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 32 columns</p>
</div>




```python
wnba.tail(5)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Name</th>
      <th>Team</th>
      <th>Pos</th>
      <th>Height</th>
      <th>Weight</th>
      <th>BMI</th>
      <th>Birth_Place</th>
      <th>Birthdate</th>
      <th>Age</th>
      <th>College</th>
      <th>...</th>
      <th>OREB</th>
      <th>DREB</th>
      <th>REB</th>
      <th>AST</th>
      <th>STL</th>
      <th>BLK</th>
      <th>TO</th>
      <th>PTS</th>
      <th>DD2</th>
      <th>TD3</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>138</th>
      <td>Tiffany Hayes</td>
      <td>ATL</td>
      <td>G</td>
      <td>178</td>
      <td>70.0</td>
      <td>22.093170</td>
      <td>US</td>
      <td>September 20, 1989</td>
      <td>27</td>
      <td>Connecticut</td>
      <td>...</td>
      <td>28</td>
      <td>89</td>
      <td>117</td>
      <td>69</td>
      <td>37</td>
      <td>8</td>
      <td>50</td>
      <td>467</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>139</th>
      <td>Tiffany Jackson</td>
      <td>LA</td>
      <td>F</td>
      <td>191</td>
      <td>84.0</td>
      <td>23.025685</td>
      <td>US</td>
      <td>April 26, 1985</td>
      <td>32</td>
      <td>Texas</td>
      <td>...</td>
      <td>5</td>
      <td>18</td>
      <td>23</td>
      <td>3</td>
      <td>1</td>
      <td>3</td>
      <td>8</td>
      <td>28</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>140</th>
      <td>Tiffany Mitchell</td>
      <td>IND</td>
      <td>G</td>
      <td>175</td>
      <td>69.0</td>
      <td>22.530612</td>
      <td>US</td>
      <td>September 23, 1984</td>
      <td>32</td>
      <td>South Carolina</td>
      <td>...</td>
      <td>16</td>
      <td>70</td>
      <td>86</td>
      <td>39</td>
      <td>31</td>
      <td>5</td>
      <td>40</td>
      <td>277</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>141</th>
      <td>Tina Charles</td>
      <td>NY</td>
      <td>F/C</td>
      <td>193</td>
      <td>84.0</td>
      <td>22.550941</td>
      <td>US</td>
      <td>May 12, 1988</td>
      <td>29</td>
      <td>Connecticut</td>
      <td>...</td>
      <td>56</td>
      <td>212</td>
      <td>268</td>
      <td>75</td>
      <td>21</td>
      <td>22</td>
      <td>71</td>
      <td>582</td>
      <td>11</td>
      <td>0</td>
    </tr>
    <tr>
      <th>142</th>
      <td>Yvonne Turner</td>
      <td>PHO</td>
      <td>G</td>
      <td>175</td>
      <td>59.0</td>
      <td>19.265306</td>
      <td>US</td>
      <td>October 13, 1987</td>
      <td>29</td>
      <td>Nebraska</td>
      <td>...</td>
      <td>11</td>
      <td>13</td>
      <td>24</td>
      <td>30</td>
      <td>18</td>
      <td>1</td>
      <td>32</td>
      <td>151</td>
      <td>0</td>
      <td>0</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 32 columns</p>
</div>




```python
wnba.shape
```




    (143, 32)



### Data dicctionary

https://www.kaggle.com/datasets/jinxbe/wnba-player-stats-2017

Stats from all games of season 2016-2017

- G = Games Played
- MIN = Minutes Played
- FGM = Field Goals Made
- FGA = Field Goals Attempts
- FG% = Field Goals %
- 3PM = 3Points Made
- 3PA = 3Points Attempts
- 3P% = 3Points %
- FTM = Free Throws made
- FTA = Free Throws Attempts
- FT% = Free Throws %
- OREB = Offensive Rebounds
- DREB = Defensive Rebounds
- REB = Total Rebounds
- AST = Assists
- STL = Steals
- BLK = Blocks
- TO = Turnovers
- PTS = Total points
- DD2 = Double doubles
- TD3 = Triple doubles


#### Take one measure of the sampling error.

1. Use the Games Played column to find the maximum number of games played by a player in the 2016-2017 season. The dataset contains all the players who played at least one game, so it's a population relative to our question. Find this parameter, and assign the result to a variable named parameter.



```python
parameter = wnba['Games Played'].max() # parameter <--> population
```

2. Using the `DataFrame.sample()` method, randomly sample 30 players from the population, and assign the result to a variable named sample.
    - When calling `Series.sample()`, use the argument `random_state = 1. ` This makes your results reproducible, and it helps us with the answer-checking (we'll discuss this on the next screen).
    




```python
sample = wnba['Games Played'].sample(30, random_state = 1)
```

3. Find the maximum number of games using the sample, and assign the result to a variable named `statistic`.


```python
statistic = sample.max()
```

4. Measure the sampling error, and assign the result to a variable named `sampling_error`.


```python
sampling_error = parameter - statistic
sampling_error
```




    2


