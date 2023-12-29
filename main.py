# Importing FastAPI
from fastapi import FastAPI
app = FastAPI()

@app.get("/")
async def create_book():
    return "Hello World: V1"