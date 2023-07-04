import React, { useCallback } from 'react'
import logo from '../../assets/logowithoutbg.png'
import Button from '../../components/Button'
import icons from '../../ultils/icons'
import { path } from '../../ultils/constant'
import { useNavigate } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'
import * as actions from '../../store/actions'

const { AiFillPlusCircle, AiOutlineHeart } = icons
const Header = () => {
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const {isLoggedIn} = useSelector(state => state.auth)
  
  // eslint-disable-next-lineY
  const goLogin = useCallback((flag) => {
    navigate(path.LOGIN,  {state: {flag}})
  }, []);
  return (
    <div className='w-3/4'>
      <div className='w-full flex items-center justify-between '>
        <img src={logo} alt='logo' className='w-[240px] h-[70px] object-contain' />
        <div className='flex items-center gap-1'>
          <Button text={'Yêu thích'} textColor='text-white' bgColor='bg-secondary2' IcAfter={AiOutlineHeart} />
          {!isLoggedIn ?
          <div className=' flex items-center gap-1'>
          <Button text={'Đăng Nhập'} textColor='text-white' bgColor='bg-[#3961fb]' onClick={() => goLogin(false)} />
          <Button text={'Đăng ký'} textColor='text-white' bgColor='bg-[#3961fb]' onClick={() => goLogin(true)} />
          </div> :
          <>
          <Button text={'Đăng Xuất'} textColor='text-white' bgColor='bg-[#3961fb]' onClick={() => dispatch(actions.logout())} />
          </>
          
        }
          <Button text={'Đăng tin mới'} textColor='text-white' bgColor='bg-secondary2' IcAfter={AiFillPlusCircle} />
        </div>
      </div>
    </div>
  )
}

export default Header
