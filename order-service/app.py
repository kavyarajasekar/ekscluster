
from flask import Flask, jsonify
app = Flask(__name__)

@app.route('/order')
def get_order():
    return jsonify({"orderId": 101, "item": "Laptop", "quantity": 1})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
