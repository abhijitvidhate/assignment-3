from flask import Flask
import requests
import pandas as pd
import plotly.express as px

app = Flask(__name__)

@app.route('/')
def dashboard():
    # Example health data
    data = pd.DataFrame({
        'Service': ['Jenkins', 'GitHub', 'Docker'],
        'Status': ['Healthy', 'Healthy', 'Degraded']
    })
    fig = px.bar(data, x='Service', y='Status', title='CI/CD Health Status')
    return f"<h1>CI/CD Pipeline Health Dashboard</h1>{fig.to_html()}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
