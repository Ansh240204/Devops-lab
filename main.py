from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
def read_root():
    return {"name": "Ansh", "Location": "Gurgaon"}

@app.get("/{data}")
def read_data(data: str):
    return {"hi": data, "Location": "Dehradun"}

if _name_ == "_main_":
    uvicorn.run("main:app", host="0.0.0.0", port=80, reload=True)