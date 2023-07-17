import React, { useEffect } from 'react'
import { Button } from '../../components'
import Item from '../../components/Item'
import { useDispatch, useSelector } from 'react-redux'
import { getPosts, getPostsLimit, getPostsLimitByAcreage, getPostsLimitByPrice } from '../../store/actions/post'
import Pagination from './Pagination'
import { useSearchParams } from 'react-router-dom'
import { apiGetPostsLimitByPrice } from '../../services/post'
const List = ({ page, minPrice, maxPrice, minAcreage, maxAcreage }) => {
    const dispatch = useDispatch()
    const [searchParams] = useSearchParams()
    const { posts } = useSelector(state => state.post)
    useEffect(() => {
        let params = []
        for (let entry of searchParams.entries()) {
            params.push(entry);
        }
        let searchParamsObject = {}
        params?.forEach(i => {
            if (Object.keys(searchParamsObject)?.some(item => item === i[0])) {
                searchParamsObject[i[0]] = [...searchParamsObject[i[0]], i[1]]
            } else {
                searchParamsObject = { ...searchParamsObject, [i[0]]: [i[1]] }
            }
        })



        if (minPrice && maxPrice) {
            searchParamsObject.minPrice = minPrice
            searchParamsObject.maxPrice = maxPrice
            let offset = page ? page - 1 : 0
           dispatch(getPostsLimitByPrice(offset, minPrice, maxPrice))
        } else if(minAcreage && maxAcreage) {
            searchParamsObject.minAcreage = minAcreage
            searchParamsObject.maxPrice = maxPrice
            let offset = page ? page - 1 : 0
            dispatch(getPostsLimitByAcreage(offset, minAcreage, maxAcreage))
        }
         else {
            let offset = page ? page - 1 : 0
            dispatch(getPostsLimit(offset))
        }
    }, [page, minPrice, maxPrice, minAcreage, maxAcreage])

    return (
        <div className='w-full p-2 bg-white shadow-md rounded-md'>
            <div className='flex items-center justify-between my-3'>
                <h4>Danh sách tin đăng</h4>
                <span>Cập nhât: 12:05 25/08/2022</span>
            </div>
            <div className='flex items-center gap-2 my-2'>
                <span>Sắp xếp:</span>
                <Button bgColor={'bg-gray-200'} text={'Mặc định'} />
                <Button bgColor={'bg-gray-200'} text={'Mới nhất'} />
            </div>
            <div className='items'>
                {posts?.length > 0 && posts.map(item => {
                    return (
                        <Item
                            key={item?.id}
                            address={item?.address}
                            attributes={item?.attributeDTO}
                            description={JSON.parse(item?.description)}
                            image={JSON.parse(item?.image?.image)}
                            star={+item?.star}
                            title={item?.title}
                            user={item?.userDTO}
                        />
                    )
                })}
            </div>
        </div>
    )
}

export default List