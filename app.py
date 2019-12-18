from flask import Flask, render_template, url_for, request, redirect, jsonify
from datetime import datetime
import pandas as pd
import sqlite3
from flask.helpers import flash
from ln2sql import Ln2sql

app = Flask(__name__)
app.secret_key = b'_5#y2L"F488z\n\xec]/'
""" app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///test.db'

db = SQLAlchemy(app) """

conn = sqlite3.connect('sql.db', check_same_thread=False)
cur = conn.cursor()


""" class Todo(db.Model):

    id = db.Column(db.Integer, primary_key=True)
    content = db.Column(db.String(200), nullable=False)
    date_created = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return '<Task %r>' % self.id """


@app.route('/', methods=['POST', 'GET'])
def index():
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
        if 'file' not in request.files:
            flash('No file')
            return redirect(request.url)
        f = request.files['file']
        if f.filename == '':
            flash('No selected file')
            return redirect(request.url)
        data_xls = pd.read_excel(f)
        cur.execute('DROP TABLE IF EXISTS tbl')
        data_xls.to_sql(name='tbl', con=conn)
        return render_template('index.html', table=data_xls.to_html())
    else:
        return render_template('index.html')


@app.route('/sql', methods=['POST'])
def sql():
    if request.method == 'POST':
        if request.form['english'] != '':

            """ code doesn't work!! """

            with open('sql.sql', 'w') as f:
                for line in conn.iterdump():
                    f.write('%s\n' % line)

            parser = Ln2sql(
                'sql.sql', 'lang_store\english.csv', 'output.json', u'thesaurus_store\\th_english.dat', u'stopwords\english.txt')

            json_query = parser.get_query(request.form['english'])

            query = parser.remove_json(json_query)

            """ code doesn't work!! """

            df = pd.read_sql_query("select * from tbl;", conn)
            return render_template('index.html', table=df.to_html())


if __name__ == "__main__":
    app.run(debug=True)
