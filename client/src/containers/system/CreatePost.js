import React, { useState } from 'react'
import Address from '../../components/Address'
import Overview from '../../components/Overview'
import icons from '../../ultils/icons'
import { apiAddPosts, apiUploadImages } from '../../services/post'
import { Button, Loading } from '../../components'
import validate from '../../ultils/Common/validateFields'
import Swal from 'sweetalert2'
import { useNavigate } from 'react-router-dom'
import { useSelector } from 'react-redux'
const { BsCameraFill, ImBin } = icons
const CreatePost = ({ isEdit }) => {
  const { dataEdit } = useSelector(state => state.post)
  console.log(dataEdit)
  const [payload, setPayload] = useState(() => {
    const initData = {
      categoryCode: dataEdit?.category?.code || '',
      title: dataEdit?.title || '',
      priceNumber: dataEdit?.attributeDTO?.price || 0,
      areaNumber: dataEdit?.attributeDTO?.acreage || 0,
      images: dataEdit?.image?.image || '',
      address: dataEdit?.address || '',
      description: (dataEdit?.description || '').substring(2, (dataEdit?.description || '').length - 2),
      target: dataEdit?.overview?.target || '',
      province: dataEdit?.province || '',
      phone: dataEdit?.phone || '',
      street : dataEdit?.street || '',
    }
    return initData
  })

  const [imagesPreview, setImagesPreview] = useState([]);
  const [isLoading, setIsLoading] = useState(false)
  const [invalidFields, setInvalidFields] = useState([])
  const navigate = useNavigate()
  const handleFiles = async (e) => {
    e.stopPropagation()
    setIsLoading(true)
    let images = []
    let files = e.target.files
    let formData = new FormData()
    for (let i of files) {
      formData.append('file', i)
      formData.append('upload_preset', process.env.REACT_APP_UPLOAD_ASSETS_NAME)
      let response = await apiUploadImages(formData)
      if (response.status === 200) images = [...images, response.data?.secure_url]
    }
    setIsLoading(false)
    setImagesPreview(prev => [...prev, ...images])
    setPayload(prev => ({ ...prev, images: [...prev.images, ...images] }))
  }
  const handleDeleteImage = (image) => {
    setImagesPreview(prev => prev?.filter(item => item !== image))
    setPayload(prev => ({
      ...prev,
      images: prev.images?.filter(item => item !== image)
    }))
  }

  const handleSubmit = () => {
    // console.log(JSON.stringify(payload))
    const result = validate(payload, setInvalidFields);
    // console.log(result);
    // console.log(invalidFields);
    // console.log(payload);
    const fetchCreatePost = async () => {
      const response = await apiAddPosts(payload)
      if (response?.data) {
        Swal.fire('Thành công', 'Đã thêm bài đăng mới', 'success').then(() => {
          setPayload({
            categoryCode: '',
            title: '',
            priceNumber: 0,
            areaNumber: 0,
            images: '',
            address: '',
            description: '',
            target: '',
            province: '',
            phone: '',
            street: '',
          })
        })
        navigate('/he-thong/quan-ly-bai-dang')
      } else {
        // console.log(response)
        Swal.fire('Có lỗi gì đó', 'error')
      }
    }

    if (result === 0) {
      fetchCreatePost();
    }

    // console.log(payload);
  }
  return (
    <div className='px-6'>
      <h1 className='text-3xl font-medium py-4 border-b border-gray-200'>{!isEdit ? 'Đăng tin mới' : 'Sửa tin đăng'}</h1>
      <div className='flex'>
        <div className='py-4 flex flex-col gap-4 flex-auto'>
          <Address invalidFields={invalidFields} setInvalidFields={setInvalidFields} payload={payload} setPayload={setPayload} />
          <Overview invalidFields={invalidFields} setInvalidFields={setInvalidFields} payload={payload} setPayload={setPayload} />
          <div className='w-full mb-6'>
            <h2 className='font-semibold text-xl py-4'>Hình ảnh</h2>
            <small>Cập nhật hình ảnh rõ ràng sẽ cho thuê nhanh hơn</small>
            <div className='w-full'>
              <label className='w-full border-2 h-[200px] my-4 gap-4 flex flex-col items-center justify-center border-gray-400 border-dashed rounded-md' htmlFor="file">
                {isLoading
                  ? <Loading />
                  : <div className='flex flex-col items-center justify-center'>
                    <BsCameraFill color='blue' size={50} />
                    Thêm ảnh
                  </div>}
              </label>
              <input onChange={handleFiles} hidden type="file" id='file' multiple />
              <div className='w-full'>
                <h3 className='font-medium py-4'>Ảnh đã chọn</h3>
                <small className='text-red-500'>
                  {invalidFields?.some(item => item.name === 'images') && invalidFields?.find(item => item.name === 'images')?.message}
                </small>
                <div className='flex gap-4 items-center'>
                  {imagesPreview?.map(item => {
                    return (
                      <div key={item} className='relative w-1/3 h-1/3 '>
                        <img src={item} alt="preview" className='w-full h-full object-cover rounded-md' />
                        <span
                          title='Xóa'
                          onClick={() => handleDeleteImage(item)}
                          className='absolute top-0 right-0 p-2 cursor-pointer bg-gray-300 hover:bg-gray-400 rounded-full'
                        >
                          <ImBin />
                        </span>
                      </div>
                    )
                  })}
                </div>
              </div>
            </div>
          </div>
          <Button onClick={handleSubmit} text='Tạo mới' bgColor='bg-green-600' textColor='text-white' />
          <div className='h-[500px]'>

          </div>
        </div>
        <div className='w-[30%] flex-none'>
          maps
          <Loading />
        </div>
      </div>
    </div>
  )
}

export default CreatePost