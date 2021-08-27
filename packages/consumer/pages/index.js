import axios from 'axios';
import Head from 'next/head'
import { useEffect, useState } from 'react';
import styles from '../styles/Home.module.css'

export default function Home() {
  const API_URL=process.env.NEXT_PUBLIC_API_URI
  const instance = axios.create({

    baseURL: API_URL
  });
  const [users, setUsers] = useState([])
  useEffect(() => {
    getUsers();
  }, []);
  const getUsers=async ()=>{
    try{
    const {data}=await instance.get(`/api/user`,{
      'Content-Type': 'application/x-www-form-urlencoded',
    })
    console.log("DATA",data)
    setUsers(data.data)
    }
    catch(e){
        console.log(e)
    }
  }
  return (
  
    <div className={styles.container}>
      <Head>
        <title>Consumer Next App</title>
        <meta name="description" content="Generated by create next app" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main className={styles.main}>
        <h1 className={styles.title} style={{textAlign:"center"}}>
          PROD IS NOT THE PROB        </h1>
        <div style={{display:"flex"}}>
          <ul>
          {users?.map(user=>{
            return <li>User - {user?.ID} :: {user?.first_name} {user?.last_name}</li>
          })}
          </ul>
        </div>
       </main>
    </div>
  )
}
