import React, { useEffect } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { getPostsByPhone } from '../../store/actions'

const ManagePost = () => {
  const dispatch = useDispatch()
  const { postsPhone } = useSelector(state => state.post)
  useEffect(() => {
    let phone = window.localStorage.getItem('persist:auth') && JSON.parse(window.localStorage.getItem('persist:auth'))?.phone?.slice(1, -1)
    dispatch(getPostsByPhone(phone))
    console.log(postsPhone)
  }, [])
  return (
    <div>
      <div className='py-4 border-b border-gray-200 flex items-center justify-between'>
        <h1 className='text-3xl'>Quản lý tin đăng</h1>
        <select className='outline-none border p-2 border-gray-200 rounded-md'>
          <option value="">Lọc theo trạng thái</option>
        </select>
      </div>
      <table className='w-full table-auto'>
        <thead>
          <tr>
            <th className='border p-2'>STT</th>
            <th className='border p-2'>Ảnh đại diện</th>
            <th className='border p-2'>Tiêu đề</th>
            <th className='border p-2'>Giá</th>
            <th className='border p-2'>Ngày bắt đầu</th>
            <th className='border p-2'>Ngày hết hạn</th>
            <th className='border p-2'>Trạng thái</th>
          </tr>
        </thead>
        {postsPhone.length > 0 ?

          postsPhone?.map((item, index) => {
            return (
              <tbody>
                <tr>
                  <td className='border p-2'>#{index + 1}</td>
                  <td className='border flex items-center justify-center p-2'>
                    <img src= {JSON.parse(item?.image?.image)[0] || ''} alt='avartar-posts' className='w-10 h-10 object-cover rounded-md' />                 
                  </td>
                  <td className='border p-2'>{item?.title}</td>
                  <td className='border p-2'>{item?.attributeDTO?.price/1000000}triệu/tháng</td>
                  <td className='border p-2'>{moment(item?.createdDate).format("YYYY-MM-DD HH:mm:ss")}</td>
                  <td className='border p-2'>{}</td>
                  <td className='border p-2'>{}</td>
                </tr>
              </tbody>
            )
          })

          :
          <h1>Bạn chưa đăng tin nào cả!!!</h1>}
      </table>
    </div>
  )
}

export default ManagePost