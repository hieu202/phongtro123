import actionTypes from './actionTypes'
import { apiSignIn, apiSignUp } from '../../services/auth'
export const signIn = (payload) => async (dispatch) => {
  
    try {
        const response = await apiSignIn(payload);
        if (response.data.accessToken) {
            dispatch({
                type: actionTypes.LOGIN_SUCCESS,
                data: response.data.accessToken,
                name: response.data.name
            })
        } 
    } catch (error) {
        if (error.response && error.response.status === 400) {
            // Xử lý khi lỗi 400 xảy ra (đăng nhập thất bại)
            dispatch({
              type: actionTypes.LOGIN_FAIL,
              error: error.response.data.message,
            });
          } else {
            // Xử lý khi có lỗi khác xảy ra
            dispatch({
              type: actionTypes.LOGIN_ERROR,
              error: 'Đã xảy ra lỗi trong quá trình đăng nhập.',
            });
          }
          
    }
}
export const signUp = (payload) => async (dispatch) => {
    try {
        const response = await apiSignUp(payload);
        if (response.data) {
            dispatch({
                type: actionTypes.REGISTER_SUCCESS,
                data: response.data.message,
            })
        } 
    } catch (error) {
        if (error.response && error.response.status === 400) {
            // Xử lý khi lỗi 400 xảy ra (đăng ký thất bại)
            dispatch({
              type: actionTypes.REGISTER_FAIL,
              error: error.response.data.message,
            });
          } else {
            // Xử lý khi có lỗi khác xảy ra
            dispatch({
              type: actionTypes.REGISTER_FAIL,
              error: 'Đã xảy ra lỗi trong quá trình đăng ký.',
            });
          }
          
    }
}
export const logout = () => ({
  type: actionTypes.LOGOUT
})