import React, {memo} from 'react'
const Button = ({text, textColor, bgColor, IcAfter, onClick, fullWith}) => {
  return (
    <button
        
        type = 'button'
        className = {`p-2  ${textColor} ${bgColor} ${fullWith && 'w-full '} outline-none rounded-md hover:underline flex items-center justify-center gap-1`}
        onClick={onClick}
    >
      {text}
      {IcAfter && <IcAfter />}
    </button>
  )
}

export default memo(Button)