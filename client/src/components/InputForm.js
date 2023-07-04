import React, {memo} from 'react'


const InputForm = ({label, value, setValue, keyPayload, invalidFileds, setInvalidFileds, type}) => {
  return (
    <div className='flex flex-col gap-1'> 
      <label htmlFor='phone' className='text-xs'>{label}</label>
      <input 
        type={type || 'text'}
        id='phone'
        className='outline-none bg-[#e8f0fe] p-2 rounded-md'
        value={value}
        onChange={(e) => setValue(prev => ({...prev, [keyPayload]: e.target.value}))}
        onFocus={() => setInvalidFileds([])}
        />
        {invalidFileds.length> 0 && invalidFileds.some(i => i.name === keyPayload) &&
        <small className='text-red-500 italic'>{invalidFileds.find(i => i.name === keyPayload)?.message}</small>}
    </div>
  )
}

export default memo(InputForm)