
from flask import Flask, jsonify
app = Flask(__name__)

@app.route('/user')
def get_user():
    return jsonify({"id": 1, "name": "Alice", "role": "Engineer"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
