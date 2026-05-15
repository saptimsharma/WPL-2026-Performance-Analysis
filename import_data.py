import pandas as pd
import sqlite3

conn = sqlite3.connect("wpl.db")

# import all files
pd.read_csv("match_results - Sheet1.csv").to_sql("match_results", conn, if_exists="replace", index=False)
pd.read_csv("points_table - Sheet1.csv").to_sql("points_table", conn, if_exists="replace", index=False)
pd.read_csv("top_run_scorers - Sheet1.csv").to_sql("top_run_scorer", conn, if_exists="replace", index=False)
pd.read_csv("TOP__BOWLER__WPL - Sheet1.csv").to_sql("top_bowler", conn, if_exists="replace", index=False)
pd.read_csv("most_sixes - Sheet1.csv").to_sql("most_sixes", conn, if_exists="replace", index=False)

print("All files imported successfully!")

conn.close()