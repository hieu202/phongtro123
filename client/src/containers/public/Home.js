import React from 'react'
import Header from './Header'
import { Outlet } from 'react-router-dom'
import Navigation from './Navigation'
import Search from './Search'
const Home = () => {
  return (
    <div className='w-full flex flex-col items-center h-full'>
        <Header />
        <Navigation />
        <Search />
        <div className='w-3/4 flex flex-col items-start justify-start'>
          <Outlet />
        </div>
    </div>
  )
}

export default Home