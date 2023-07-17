import actionTypes from './actionTypes'
import { apiGetPosts, apiGetPostsLimit, apiGetPostsLimitByAcreage, apiGetPostsLimitByPrice } from '../../services/post'
export const getPosts = () => async (dispatch) => {
    try {
        const response = await apiGetPosts();
        if (response?.data) {
            dispatch({
                type: actionTypes.GET_POSTS,
                posts: response.data
            })
        }
    } catch (error) {
        dispatch({
            type : actionTypes.GET_POSTS,
            posts: null
        })
    }
}

export const getPostsLimit = (page) => async (dispatch) => {
    try {
        const response = await apiGetPostsLimit(page);
        if (response?.data) {
            dispatch({
                type: actionTypes.GET_POSTS_LIMIT,
                posts: response.data.posts,
                count: response.data.count
            })
            
        }
    } catch (error) {
        dispatch({
            type : actionTypes.GET_POSTS,
            posts: null
        })
    }
}
export const getPostsLimitByPrice = (page, minPrice, maxPrice) => async (dispatch) => {
    try {
        const response = await apiGetPostsLimitByPrice(page, minPrice, maxPrice);
        if (response?.data) {
            dispatch({
                type: actionTypes.GET_POSTS_LIMIT_PRICE,
                posts: response.data.posts,
                count: response.data.count
                
            })
            
        }
    } catch (error) {
        dispatch({
            type : actionTypes.GET_POSTS,
            posts: null
        })
    }
}
export const getPostsLimitByAcreage = (page, minAcreage, maxAcreage) => async (dispatch) => {
    try {
        const response = await apiGetPostsLimitByAcreage(page, minAcreage, maxAcreage);
        if (response?.data) {
            dispatch({
                type: actionTypes.GET_POSTS_LIMIT_ACREAGE,
                posts: response.data.posts,
                count: response.data.count
                
            })
            
        }
    } catch (error) {
        dispatch({
            type : actionTypes.GET_POSTS,
            posts: null
        })
    }
}