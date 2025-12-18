import pandas as pd
import matplotlib.pyplot as plt
from sqlalchemy import create_engine

engine = create_engine(
    "postgresql+psycopg2://postgres@localhost:5432/sales_analysis",
    connect_args={"password": "Your Password Here!"}
)

df = pd.read_sql("SELECT * FROM sales", engine)
df['order_date'] = pd.to_datetime(df['order_date'])

monthly = df.resample('M', on='order_date')['sales'].sum()

plt.figure(figsize=(10,5))
monthly.plot()
plt.title("Monthly Revenue Trend")
plt.xlabel("Month")
plt.ylabel("Revenue")
plt.show()
