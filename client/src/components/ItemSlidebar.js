import React, { memo } from 'react'
import icons from '../ultils/icons'
import { createSearchParams, useLocation, useNavigate } from 'react-router-dom';
import { useDispatch } from 'react-redux';
import { price } from '../ultils/constant';
const { GrNext } = icons

const ItemSlidebar = ({ title, content, isDouble}) => {
    const dispatch = useDispatch()
    const location = useLocation()
    const navigate = useNavigate()
    
    const handleFilterPostsPrice = (minPrice, maxPrice) => {
        navigate({
            pathname: location?.pathname,
            search: createSearchParams({
                minPrice: minPrice,
                maxPrice: maxPrice,
            }).toString()
        });
    }
    const handleFilterPostsAcreage = (minAcreage, maxAcreage) => {
        navigate({
            pathname: location?.pathname,
            search: createSearchParams({
                minAcreage: minAcreage,
                maxAcreage: maxAcreage,
            }).toString()
        });
    }
    return (
        <div className='p-4 rounded-md bg-white w-full'>
            <h3 className='text-lg font-semibold mb-4'>{title}</h3>
            <div className='flex flex-col gap-2'>
                {!isDouble && content?.length > 0 && content.map(item => {
                    return (
                        <div key={item.code} className='flex gap-1 items-center cursor-pointer hover:text-orange-600 border-b border-gray-200 pb-1 border-dashed'>
                            <GrNext size={10} color="#ccc" />
                            <p>{item.value}</p>
                        </div>
                    )
                })}
                <div className='flex justify-start gap-5'>
                    {isDouble && content?.length > 0 && content.map(item => {
                        return (
                            <div key={item.code}>
                                {item?.left && item.left?.length > 0 && item.left.map(item => {
                                    return (
                                        <div key={item.code} className='flex flex-col '>
                                            <div onClick={content === price ? () => handleFilterPostsPrice(item.arr[0]*1000000, item.arr[1]*1000000) : () => handleFilterPostsAcreage(item.arr[0], item.arr[1])} 
                                                className='flex gap-1 items-center cursor-pointer hover:text-orange-600 border-b border-gray-200 pb-1 border-dashed'>
                                                <GrNext size={10} color="#ccc" />
                                                <p className='text-sm'>{item.value}</p>
                                            </div>
                                        </div>
                                    )
                                })}
                                {item?.right && item.right?.length > 0 && item.right.map(item => {
                                    return (
                                        <div key={item.code} className='flex flex-col'>
                                            <div onClick={content === price ? () => handleFilterPostsPrice(item.arr[0]*1000000, item.arr[1]*1000000) : () => handleFilterPostsAcreage(item.arr[0], item.arr[1])}
                                                className='flex gap-1 items-center cursor-pointer hover:text-orange-600 border-b border-gray-200 pb-1 border-dashed'>
                                                <GrNext size={10} color="#ccc" />
                                                <p className='text-sm'> {item.value}</p>
                                            </div>
                                        </div>
                                    )
                                })}
                            </div>

                        )
                    })}
                </div>
            </div>

        </div>
    )
}

export default memo(ItemSlidebar)