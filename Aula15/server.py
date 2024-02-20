import http.server as http
import socketserver as socket
PORT = 8000
Handler = http.SimpleHTTPRequestHandler

with socket.TCPServer(("", PORT), Handler) as server:
  print("serving at port", PORT)
  server.serve_forever()