import actionTypes from './actionTypes'
import { apiGetPosts, apiGetPostsLimit } from '../../services/post'
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