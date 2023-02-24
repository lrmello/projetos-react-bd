import React from 'react'
import styles from './Input.module.css'

export default function Input({
    type, onChange, name, id,  placeholder, label,
}) {
  return (
    <span className={styles.container}>
        <label htmlFor={id}></label>
        <input 
        className={styles.Input}
        type={type}
        name={name}
        id={id}
        placeholder={placeholder}
        onChange={onChange}
        />
    </span>
  )
}
