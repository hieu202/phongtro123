import React, { useEffect, useState } from 'react'
import { Button, InputForm } from '../../components'
import { useLocation, useNavigate } from 'react-router-dom'
import { apiSignIn, apiSignUp } from '../../services/auth'
import * as actions from '../../store/actions'
import { useDispatch, useSelector } from 'react-redux'
import Swal from 'sweetalert2'
const Login = () => {
  const [isRegister, setIsRegister] = useState(false)
  const [invalidFileds, setInvalidFileds] = useState([]);
  const [payload, setPayload] = useState({
    phone: '',
    password: '',
    username: ''
  })
  const { isLoggedIn, msg, update } = useSelector(state => state.auth)
  const dispatch = useDispatch();
  const location = useLocation();
  const navigate = useNavigate();
  useEffect(() => {
    setIsRegister(location.state?.flag)
  }, [location.state?.flag])

  useEffect(() => {
    isLoggedIn && navigate('/')
  }, [isLoggedIn])
  useEffect(() => {
    msg && Swal.fire(msg)
  }, [msg, update])
  const validate = (payload) => {
    let invalids = 0;
    let fields = Object.entries(payload);
    fields.forEach(item => {
      if (item[1] === '') {
        setInvalidFileds(prev => [...prev, {
          name: item[0],
          message: 'Bạn không được để trống trường này'
        }])
        invalids++;
      }
    })
    fields.forEach(item => {
      switch (item[0]) {
        case 'password':
          if (item[1].length < 6) {
            setInvalidFileds(prev => [...prev, {
              name: item[0],
              message: 'Mật khẩu phải có tối thiểu 6 ký tự'
            }])
            invalids++;
          }
          break;
        case 'phone':
          if (!+item[1]) {
            setInvalidFileds(prev => [...prev, {
              name: item[0],
              message: 'Số điện thoại không hợp lệ'
            }])
            invalids++;
          }
          break;
        default:
          break;
      }
    })
    return invalids;
  }
  const handleSubmit = async () => {
    let finalPayload = isRegister ? payload : {
      phone: payload.phone,
      password: payload.password
    }
    const invalids = validate(finalPayload);
    if (invalids === 0) { isRegister ? dispatch(actions.signUp(payload)) : dispatch(actions.signIn(payload)) }

    // try {
    //   console.log(payload)
    //   const response = await apiSignIn(payload);
    //   console.log(response);
    // } catch (error) {
    //   if (error.response && error.response.status === 400)
    //     console.log(error.response);

    //   }


  }
  return (
    <div className='bg-white w-[600px] p-[30px] pb-[100px] rounded-md shadow-sm mt-6' >
      <h3 className='font-semibold text-2xl mb-3'>{isRegister ? 'Đăng ký tài khoản' : 'Đăng nhập'}</h3>
      <div className='w-full flex flex-col gap-5'>
        {isRegister && <InputForm invalidFileds={invalidFileds} setInvalidFileds={setInvalidFileds} label={'HỌ TÊN'} value={payload.username} setValue={setPayload} keyPayload={'username'} />}
        <InputForm invalidFileds={invalidFileds} setInvalidFileds={setInvalidFileds} label={'SỐ ĐIỆN THOẠI'} value={payload.phone} setValue={setPayload} keyPayload={'phone'} />
        <InputForm invalidFileds={invalidFileds} setInvalidFileds={setInvalidFileds} label={'MẬT KHẨU'} value={payload.password} setValue={setPayload} text = 'password' keyPayload={'password'} />
        <Button
          text={isRegister ? 'Đăng ký' : 'Đăng nhập'}
          bgColor='bg-secondary1'
          textColor='text-white'
          fullWidth
          onClick={handleSubmit}
        />
      </div>
      <div className='mt-7 flex items-center justify-between'>
        {isRegister ? <><small>Bạn đã có tài khoản? <span onClick={() => {
          setIsRegister(false)
          setPayload({
            phone: '',
            password: '',
            username: ''
          })
          setInvalidFileds([])

        }} className='text-blue-500 hover:underline cursor-pointer'>Đăng nhập ngay</span></small></> :
          <>
            <small className='text-[blue] hover:text-[red] cursor-pointer' >Bạn quên mật khẩu</small>
            <small onClick={() => {
              setIsRegister(true)
              setPayload({
                phone: '',
                password: '',
                username: ''
              })
              setInvalidFileds([])
            }} className='text-[blue] hover:text-[red] cursor-pointer' >Tạo tài khoản mới</small>
          </>
        }
      </div>


    </div>
  )
}

export default Login