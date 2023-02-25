import React from 'react'
import searchIcon from '../../assets/search_svg.svg'
import styles from './SearchInput.module.css'

export default function SearchInput() {
  return (
    <span className={styles.search}>
        <input
            className={styles.input}
            type="search"
            placeholder="Digite o que procura" 
        />

        <button className={styles.button}>
            <img src={searchIcon} alt="" width="30px" height="30px" />
        </button>

    </span>
  )
}
