from flask import Flask, request

app = Flask(__name__)

def log_request(req):
    print("Headers:")
    for header, value in req.headers.items():
        print(f"{header}: {value}")
    
    print("\nBody:")
    print(req.get_data(as_text=True))

@app.route('/', methods=['GET', 'POST', 'PUT'])
def handle_request():
    log_request(request)
    return "Request received", 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
