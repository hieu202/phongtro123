import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { editData, getPostsByPhone } from '../../store/actions'
import moment from 'moment/moment'
import { Button, UpdatePost } from '../../components'
import axios from 'axios'
import { apiDeletePosts } from '../../services/post'
// import moment from moment
const ManagePost = () => {
  const dispatch = useDispatch()
  const { postsPhone } = useSelector(state => state.post)
  const [isDelete, setIsDelete] = useState(false);
  const [isEdit, setIsEdit] = useState(false);
  const handleClickDelete = async (id) => {
    try {
      await apiDeletePosts(id); // Đợi phản hồi từ API xóa bài viết
      setIsDelete(!isDelete); // Cập nhật trạng thái sau khi xóa thành công
    } catch (error) {
      console.log("Lỗi xóa bài viết: ", error);
    }
  }
  useEffect(() => {
    let phone = window.localStorage.getItem('persist:auth') && JSON.parse(window.localStorage.getItem('persist:auth'))?.phone?.slice(1, -1);
    dispatch(getPostsByPhone(phone));
    // console.log(isDelete);

  }, [isDelete]);

  return (
    <div className='flex flex-col gap-6 relative'>
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
            <th className='border p-2'>Tùy chọn</th>
          </tr>
        </thead>
        {postsPhone.length > 0 ?

          postsPhone?.map((item, index) => {
            // Tính toán ngày hết hạn 3 ngày sau khi đăng bài
            const expirationDate = moment(item?.createdDate).add(3, 'days').format("YYYY-MM-DD HH:mm:ss");

            // Kiểm tra trạng thái của bài viết dựa trên ngày hết hạn
            const isExpired = moment().isAfter(expirationDate); // Kiểm tra xem ngày hiện tại có sau ngày hết hạn không
            const status = isExpired ? 'Hết hạn' : 'Hoạt động';
            return (
              <tbody key={item?.id}>
                <tr>
                  <td className='border p-2'>#{index + 1}</td>
                  <td className='border items-center  p-2'>
                    <img src={JSON.parse(item?.image?.image)[0] || ''} alt='avartar-posts' className='w-10 h-10 object-cover rounded-md' />
                  </td>
                  <td className='border p-2'>{item?.title}</td>
                  <td className='border p-2'>{item?.attributeDTO?.price / 1000000}triệu/tháng</td>
                  <td className='border p-2'>{moment(item?.createdDate).format("YYYY-MM-DD HH:mm:ss")}</td>
                  <td className='border p-2'>{expirationDate}</td>
                  <td className='border p-2'>{status}</td>
                  <td className='border p-2 py-3 flex items-center justify-center gap-4'>
                    <Button
                      text='Sửa'
                      bgColor='bg-green-600'
                      textColor='text-white'
                      onClick={()=>{
                        setIsEdit(true)
                        dispatch(editData(item))
                      }}
                    />
                    <Button
                      text='Xóa'
                      bgColor='bg-orange-600'
                      textColor='text-white'
                      onClick={() => handleClickDelete(item?.id)}
                    />
                  </td>
                </tr>
              </tbody>
            )
          })

          :
          <>Bạn chưa đăng tin nào cả!!!</>}
      </table>
      {isEdit && <UpdatePost setIsEdit={setIsEdit} />}
    </div>
  )
}

export default ManagePost