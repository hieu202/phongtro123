import React, { useEffect } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import menuSidebar from '../../ultils/menuSidebar'
import { NavLink } from 'react-router-dom'
import { AiOutlineLogout } from 'react-icons/ai'
import * as actions from '../../store/actions'
const activeStyle = 'hover:bg-gray-200 flex  rounded-md items-center gap-2 py-2 font-bold bg-gray-200'
const notActiceStyle = 'hover:bg-gray-200 flex  rounded-md items-center gap-2 py-2 cursor-pointer'

const SideBar = () => {
    const { name, avatar, phone } = useSelector(state => state.auth)
    useEffect(() => {
        dispatch(actions.getCurrent(JSON.parse(window.localStorage.getItem('persist:auth'))?.phone.slice(1, -1)))
    }, []);
    const { currentData } = useSelector(state => state.user)
    const dispatch = useDispatch()
    return (
        <div className='w-[256px] flex-none p-4 flex flex-col gap-6'>
            <div className='flex flex-col gap-4'>
                <div className='flex items-center gap-4'>
                    <img src={currentData?.avatar} alt="avatar" className='w-12 h-12 object-cover rounded-full border-2 border-white' />
                    <div className='flex flex-col justify-center'>
                        <span className='font-semibold'>{currentData?.name}</span>
                        <small>{currentData?.phone}</small>
                    </div>
                </div>
                {/* <span >Mã thành viên: <small className='font-medium'>{currentData?.id?.match(/\d/g).join('')?.slice(0, 6)}</small></span> */}
            </div>
            <div>
                {menuSidebar.map(item => {
                    return (
                        <NavLink
                            className={({ isActive }) => isActive ? activeStyle : notActiceStyle}
                            key={item.id}
                            to={item?.path}
                        >
                            {item?.icon}
                            {item.text}
                        </NavLink>
                    )
                })}
                <span onClick={() => dispatch(actions.logout())} className={notActiceStyle}><AiOutlineLogout />Thoát</span>
            </div>
        </div>
    )
}

export default SideBar