import React from "react";
import {Link} from "react-router-dom";
import styles from "./Nav.module.css"
export default function Nav(){
return(
    <nav className={styles.Nav}>
        <Link to="/">Página inicial</Link>
        <Link to="/conhecendo">Conhecendo o Léo</Link>
        <Link to="/hobbies">Hobbies</Link>
        <Link to="/faleconosco">Fale Conosco</Link>
    </nav>
)
}