import axios from "axios";
import React,{useState} from "react";

export default function Read(){
    const [values, setValues] = useState([])

    const getApi = () =>{
        axios.get("http://localhost:3001/carro").then((resultado)=>setValues(resultado.data.modelo)).catch((erro)=>console.log(erro))
    }

    return (
        <div>
            <button onClick={getApi}>Buscar Produtos</button>
            <span style={{display:"grid",gridTemplateColumns:"repeat(3,1fr)"}}>
            {values.map((produto)=>{
                return(
                    <span style={{
                        width:"200px",
                        padding:"1em",
                        border: "1px solid white",
                        display:"flex",
                        flexDirection:"column",
                        flexWrap:"wrap",
                        justifyContent:"center",
                        alignItems:"center",
                    }}>
                        <h3>{produto.modelo}</h3>
                        <p>{produto.cor}</p>
                        <p>{produto.ano}</p>

                        <img src={produto.url} alt="" style={{width:"100px"}} />

                    </span>
                )
            })}
            </span>
        </div>
    )
}