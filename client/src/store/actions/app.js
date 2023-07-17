import { apiGetCategories } from "../../services/category";
import actionTypes from "./actionTypes";

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
