import actionTypes from "../actions/actionTypes";
const initState = {
    isLoggedIn: false,
    token : null,
    msg: '',
    update: false,
    name: "", 
    avatar: "",
    phone: ""
}
const authReducer = (state = initState, action) => {
    switch(action.type) {
        case actionTypes.LOGIN_SUCCESS : 
        return {
            ...state,
            isLoggedIn: true,
            token: action.data,
            msg: 'Đăng nhập thành công',
            name: action.name,
            avatar: action.avatar,
            phone: action.phone
        }
        case actionTypes.LOGIN_FAIL : 
        return {
            ...state,
            isLoggedIn: false,
            token: null,
            msg: action.error,
            update: !state.update
        }
        case actionTypes.REGISTER_SUCCESS : 
        return {
            ...state,
            isLoggedIn: false,
            token: null,
            msg: action.data
        }
        case actionTypes.REGISTER_FAIL : 
        return {
            ...state,
            isLoggedIn: false,
            token: null,
            msg: action.error
        }
        case actionTypes.LOGOUT:
            return {
                ...state,
                isLoggedIn: false,
                token: null,
                msg: '',
                phone : ''
            }
        default:
            return state;
    }
}
export default authReducer;
