from flask import Flask, render_template, url_for, request, redirect, jsonify
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import flask_excel as excel
import pandas as pd
import sqlite3

app = Flask(__name__)
""" app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///test.db'

db = SQLAlchemy(app) """

conn = sqlite3.connect(':memory:')
cur = conn.cursor()


""" class Todo(db.Model):

    id = db.Column(db.Integer, primary_key=True)
    content = db.Column(db.String(200), nullable=False)
    date_created = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return '<Task %r>' % self.id """


@app.route('/', methods=['POST', 'GET'])
def index():
    conn = sqlite3.connect(':memory:')
    cur = conn.cursor()
    """ if request.method == 'POST':
        task_content = request.form['content']
        new_task = Todo(content=task_content)

        try:
            db.session.add(new_task)
            db.session.commit()
            return redirect('/')
        except:
            return 'There was an issue'
    else:
        tasks = Todo.query.order_by(Todo.date_created).all()
        return render_template('index.html', tasks=tasks) """
    if request.method == 'POST':
        f = request.files['file']
        data_xls = pd.read_excel(f)
        data_xls.to_sql(name='tbl', con=conn)
        return render_template('index.html', table=data_xls.to_html())
    else:
        cur.execute('SELECT * FROM sqlite_temp_master')
        return render_template('index.html', table=cur)


if __name__ == "__main__":
    app.run(debug=True)
