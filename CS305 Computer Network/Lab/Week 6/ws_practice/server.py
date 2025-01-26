import asyncio
import websockets

class DanmakuServer:
    def __init__(self):
        # Set to store connected clients
        self.connected_clients = set()

    async def register(self, websocket):
        self.connected_clients.add(websocket)
        try:
            await self.listen(websocket)
        finally:
            self.connected_clients.remove(websocket)

    async def listen(self, websocket):
        async for message in websocket:
            await self.broadcast(message)

    async def broadcast(self, message):
        if self.connected_clients:  # Check if there are connected clients
            await asyncio.wait([client.send(message) for client in self.connected_clients])

    async def reply(self, websocket):
        await self.register(websocket)

if __name__ == "__main__":
    server = DanmakuServer()
    asyncio.get_event_loop().run_until_complete(
        websockets.serve(server.reply, 'localhost', 8765))
    asyncio.get_event_loop().run_forever()
