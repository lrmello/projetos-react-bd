import React,{useState} from 'react'
import axios from 'axios'

export default function Update() {
  const [value,setValue] = useState({})

  const patchApi = () =>{
    axios
    .patch("http://localhost:3001/carro")
    .then(resposta => console.log(resposta))
    .catch(erro =>console.log())
  }

  return (
    <div>
      <input type="text" onInput={(e) => setValue({titulo: e.target.value})} />

      <button onClick={patchApi}>Atualizar</button>
    </div>
  )
}
