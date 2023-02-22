import axios from "axios";

export const url = axios.create({
  baseURL: "https://projeto-extra-api.onrender.com",
});