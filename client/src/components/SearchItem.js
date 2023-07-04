import React, {memo} from 'react'

const SearchItem = ({IconBefore, IconAfter, text, isBold}) => {
  return (
    <div className='bg-white py-2 px-1 w-1/5 rounded-md text-gray-400 text-[13px] flex justify-between items-center '>
        <div className='flex items-center gap-1'>
        {IconBefore}
        <span className=  {isBold ? 'font-medium text-black': ''}>{text}</span>
        </div>
        {IconAfter}
    </div>
  )
}

export default memo(SearchItem)