import axios from "axios"
import React,{useState} from "react"

export default function Create(){

    const valIni = {
        modelo: "",
        cor: "",
        url: "",
        id:1
    }

    const [values, setValues] = useState(valIni)
    console.log(values);

    const onChangeInput = (evento) =>{
        setValues({...values,[evento.target.name]:evento.target.value})
    }

    const postApi = () =>{
        axios.post("http://localhost:3001/carro",values).then((resposta)=>console.log(resposta)).catch((erro)=>console.log(erro))
    }


    return(
        <div>
            <span>
              
                <label htmlFor="titulo">
                    Titulo:{""}
                </label>

                <input type="text"
                name="modelo"
                onInput={(e)=>onChangeInput(e)}
                 />
            </span>
            <span>
                <label htmlFor="cor">
                "cor":{""}
                </label>

                <input type="text" name="cor" onInput={(e) => onChangeInput(e)} />
            </span>

            <span>
                <label htmlFor="url">
                    "url":{""}
                </label>
                <input type="text" name="url_imagem" onInput={(e)=> onChangeInput(e)} />
            </span>

            <button onClick={postApi}>Cadastrar carro</button>

        </div>

    )


}