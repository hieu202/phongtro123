import React from 'react'
import Search from './Search'
import { text } from '../../ultils/constant'
import Province from '../../components/Province'
import List from './List'
import Pagination from './Pagination'
import { useSelector } from 'react-redux'
import { useSearchParams } from 'react-router-dom'
const Homepage = () => {
  const [params] = useSearchParams();
  const { count } = useSelector(state => state.post)
  return (
    <div className='w-full flex flex-col gap-3 mt-3'>
      <Search />
      <div>
        <h1 className='text-[28px] font-bold' >{text.HOME_TITLE}</h1>
        <p className='text-base text-gray-700'>{text.HOME_DESCRIPTION}</p>
      </div>
      <Province />
      <div className='w-full flex gap-3'>
        <div className='w-[70%]'>
          <List page = {params.get('page')} />
          <Pagination />

        </div>
        <div className='w-[30%]'>
          Sidebar
        </div>

      </div>
    </div>
  )
}

export default Homepage