import { apiGetCurrent } from '../../services/user';
import actionTypes from './actionTypes'
export const getCurrent = (phone) => async (dispatch) => {
    try {
        const response = await apiGetCurrent(phone);
        if (response?.data) {
            dispatch({
                type: actionTypes.GET_CURRENT,
                currentData: response.data
            })
        }
    } catch (error) {
        dispatch({
            type : actionTypes.GET_CURRENT,
            currentData: null
        })
    }
}