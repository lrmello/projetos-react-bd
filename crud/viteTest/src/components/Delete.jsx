import axios from "axios";
import React from "react";

export default function Delete(){

    const deleteApi = () =>{
        axios
        .delete("http://localhost:3001/carro")
        .then((resposta) => console.log(resposta))
        .catch((erro)=>console.log())
    }

    return(
        <div>
            <button onClick={deleteApi}>Deletar</button>
        </div>
    )
}