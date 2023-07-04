import React from 'react'
import { SearchItem } from '../../components'
import { BsChevronRight, BsHouseAdd } from 'react-icons/bs'
import { CiLocationOn } from 'react-icons/ci'
import { TbReportMoney } from 'react-icons/tb'
import { RiCrop2Line } from 'react-icons/ri'
import { FiSearch } from 'react-icons/fi'
const Search = () => {
  return (
    <div className='h-[55px] p-[10px] bg-[#febb02] rounded-lg flex gap-2'>
      <SearchItem isBold={true} IconBefore={<BsHouseAdd />} IconAfter={<BsChevronRight />} text='test' />
      <SearchItem IconBefore={<CiLocationOn />} IconAfter={<BsChevronRight />} text='test' />
      <SearchItem IconBefore={<TbReportMoney />} IconAfter={<BsChevronRight />} text='test' />
      <SearchItem IconBefore={<RiCrop2Line />} IconAfter={<BsChevronRight />} text='test' />
      <button
        type='button'
        className='outline-none py-2 px-4 flex-1 w-full bg-secondary1 text-[13.3px] flex items-center justify-center gap-2 text-white font-medium rounded-md'
      >
        <FiSearch />
        Tìm kiếm
      </button>
    </div>
  )
}

export default Search