import { apiGetCategories } from "../../services/category";
import actionTypes from "./actionTypes";
import axiosDefault from 'axios'
export const getCategories = () => async (dispatch) => {
    try {
        const response = await apiGetCategories();
        // console.log(response.data)
        if (response?.data) {
            dispatch({
                type: actionTypes.GET_CATEGORIES,
                categories: response.data
            })

        }
    } catch (error) {
        dispatch({
            type: actionTypes.GET_CATEGORIES,
            categories: null
        })
    }
}
// export const getProvinces = () => async (dispatch) => {
//     try {
//         const response = await apiGetProvinces()
//         if (response?.data.err === 0) {
//             dispatch({
//                 type: actionTypes.GET_PROVINCES,
//                 provinces: response.data.response,
//                 msg: ''
//             })
//         } else {
//             dispatch({
//                 type: actionTypes.GET_PROVINCES,
//                 msg: response.data.msg,
//                 provinces: null
//             })
//         }
//     } catch (error) {
//         dispatch({
//             type: actionTypes.GET_PROVINCES,
//             provinces: null,
//             msg: ''
//         })
//     }
// }