import React from 'react'
import Header from './Header'
import { Outlet } from 'react-router-dom'
import Navigation from './Navigation'
const Home = () => {
  return (
    <div className='w-screen flex flex-col items-center  '>
        <Header />
        <Navigation />
        <div className='w-3/4 flex flex-col items-start justify-start'>
          <Outlet />
        </div>
    </div>
  )
}

export default Home