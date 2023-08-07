import React, { memo, useState } from 'react'
import icons from '../ultils/icons'

const { GrStar, RiHeartFill, RiHeartLine, BsBookmarkStarFill } = icons;
const indexs = [0, 1, 2, 3]
const Item = ({ address, attributes, description, image, star, title, user }) => {
    const [isHeartCheck, setIsHeartCheck] = useState(false);
    return (
        <div className='w-full flex border-t border-orange-600 p-4'>
            <div className='w-2/5 flex flex-wrap gap-[2px] items-center relative cursor-pointer'>
                {image.length > 0 && image.filter((i, index) => indexs.some(i => i === index))?.map((i, index) => {
                    return (
                        <img key={index} src={i} alt="preview" className='w-[47%] h-[130px] object-cover' />
                    )
                })}
                <span className='bg-overlay-70 text-white px-2 rounded-md absolute left-1 bottom-4'>{image?.length} ảnh </span>
                <span
                    className='text-white absolute right-5 bottom-1'
                    onMouseEnter={() => setIsHeartCheck(true)}
                    onMouseLeave={() => setIsHeartCheck(false)}
                >
                    {isHeartCheck ? <RiHeartFill size={24} color='red' /> : <RiHeartFill size={24} />}
                </span>
            </div>
            <div className='w-3/5'>
                <div className='flex justify-between gap-4 w-full'>
                    <div className='text-red-600 font-medium' >
                        <GrStar className='star-item mb-2' size={18} color='yellow' />
                        <GrStar className='star-item mb-2' size={18} color='yellow' />
                        <GrStar className='star-item mb-2' size={18} color='yellow' />
                        <GrStar className='star-item mb-2' size={18} color='yellow' />
                        <GrStar className='star-item mb-2' size={18} color='yellow' />
                        {title}
                    </div>
                    <BsBookmarkStarFill size={24} className='w-[10%] flex justify-end' color='orange' />
                </div>
                <div className='my-2 flex gap-2 justify-between'>
                    <span className='font-bold w-1/4 whitespace-nowrap text-green-600 '>{attributes?.price / 1000000} triệu/tháng</span>
                    <span>{attributes?.acreage}m²</span>
                    <span>{`${address.split(',')[address.split(',').length - 2]},${address.split(',')[address.split(',').length - 1]}`}</span>
                </div>
                <p className='text-gray-500 w-full h-[100px] overflow-hidden line-clamp-4'>
                    {description}
                </p>
                <div className='flex items-center my-5 justify-between'>
                    <div className='flex items-center'>
                        <img src="https://lnsel.com/wp-content/uploads/2018/12/anon-avatar-300x300.png" alt="avatar" className='w-[30px] h-[30px] object-cover rounded-full' />
                        <p>{user?.name}</p>
                    </div>
                    <div>
                        <button type='button' className='bg-blue-700 text-white mr-1 rounded-md'>
                            Gọi {user?.phone}
                        </button>
                        <button type='button' className='text-blue-700 px-1 rounded-md border border-blue-700'>
                            Nhắn Zalo
                        </button>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default memo(Item)