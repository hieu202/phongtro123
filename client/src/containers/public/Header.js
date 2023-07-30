import React, { useCallback, useEffect, useState } from 'react'
import logo from '../../assets/logowithoutbg.png'
import Button from '../../components/Button'
import icons from '../../ultils/icons'
import { path } from '../../ultils/constant'
import { Link, useNavigate } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'
import * as actions from '../../store/actions'
import menuManage from '../../ultils/menuManage'
import { getCurrent } from '../../store/actions'

const { AiFillPlusCircle, AiOutlineHeart, AiOutlineLogout } = icons
const Header = () => {
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const { isLoggedIn } = useSelector(state => state.auth)
  const [isShowMenu, setIsShowMenu] = useState(false)
  const {currentData} = useSelector(state => state.user)
  // eslint-disable-next-lineY
  const goLogin = useCallback((flag) => {
    navigate(path.LOGIN, { state: { flag } })


  }, []);
  useEffect(() => {
    dispatch(getCurrent(JSON.parse(window.localStorage.getItem('persist:auth'))?.phone.slice(1,-1)))
    
  }, []);
  return (
    <div className='w-3/4'>
      <div className='w-full flex items-center justify-between '>
        <img src={logo} alt='logo' className='w-[240px] h-[70px] object-contain' />
        <div className='flex items-center gap-1'>
          {isLoggedIn ? <small>{currentData.name}</small> : ""}
          <Button text={'Yêu thích'} textColor='text-white' bgColor='bg-secondary2' IcAfter={AiOutlineHeart} />
          {!isLoggedIn ?
            <div className=' flex items-center gap-1'>
              <Button text={'Đăng Nhập'} textColor='text-white' bgColor='bg-[#3961fb]' onClick={() => goLogin(false)} />
              <Button text={'Đăng ký'} textColor='text-white' bgColor='bg-[#3961fb]' onClick={() => goLogin(true)} />
            </div> :

            <div className='flex items-center gap-3 relative'>
              <Button
                text={'Quản lý tài khoản'}
                textColor='text-white'
                bgColor='bg-blue-700'
              // px='px-4'
              // IcAfter={BsChevronDown}
              onClick={() => setIsShowMenu(prev => !prev)}
              />
              {isShowMenu && <div className='absolute min-w-200 top-full bg-white shadow-md rounded-md p-4 right-0 flex flex-col'>
                {menuManage.map(item => {
                  return (
                    <Link
                      className='hover:text-orange-500 flex items-center gap-2 text-blue-600 border-b border-gray-200 py-2'
                      key={item.id}
                      to={item?.path}
                    >
                      {item?.icon}
                      {item.text}
                    </Link>
                  )
                })}
                <span
                  className='cursor-pointer hover:text-orange-500 text-blue-500 py-2 flex items-center gap-2'
                  onClick={() => {
                    setIsShowMenu(false)
                    dispatch(actions.logout())
                  }}
                >
                  <AiOutlineLogout />
                  Đăng xuất
                </span>
              </div>}
            </div>}





          <Button text={'Đăng tin mới'} textColor='text-white' bgColor='bg-secondary2' IcAfter={AiFillPlusCircle} />
        </div>
      </div>
    </div >
  )
}

export default Header
