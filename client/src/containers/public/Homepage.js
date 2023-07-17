import React from 'react'
import Search from './Search'
import { area, price, text } from '../../ultils/constant'

import List from './List'
import Pagination from './Pagination'
import { useSelector } from 'react-redux'
import { useSearchParams } from 'react-router-dom'
import { ItemSlidebar, Province } from '../../components'

const Homepage = () => {
  const [params] = useSearchParams();
  const { count } = useSelector(state => state.post)
  const { categories } = useSelector(state => state.app)


  
  return (
    <div className='w-full flex flex-col gap-3 mt-3' >
      <div>
        <h1 className='text-[28px] font-bold' >{text.HOME_TITLE}</h1>
        <p className='text-base text-gray-700'>{text.HOME_DESCRIPTION}</p>
      </div>
      <Province />
      <div className='w-full flex gap-3'>
        <div className='w-[70%]'>
          <List page={params.get('page')} minPrice={params.get('minPrice')} maxPrice = {params.get('maxPrice') } minAcreage={params.get('minAcreage')} maxAcreage = {params.get('maxAcreage')}/>
          <Pagination />

        </div>
        <div className='w-[30%] border-green-500 flex flex-col gap-4 justify-start items-center'>
          <ItemSlidebar content={categories} title="Danh sách cho thuê" />
          <ItemSlidebar isDouble={true} content={price} title="Xem theo giá" />
          <ItemSlidebar isDouble={true} title="Xem theo diện tích" content={area} />
        </div>
      </div>
    </div>
  )
}

export default Homepage