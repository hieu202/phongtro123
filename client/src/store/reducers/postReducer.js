import actionTypes from "../actions/actionTypes";
const initState = {
    posts: [],
    postsPhone: [],
    count: 0,
    dataEdit: {},
    province: null,
}
const postReducer = (state = initState, action) => {
    switch (action.type) {
        case actionTypes.GET_POSTS:
            return {
                ...state,
                posts: action.posts || []
            }
        case actionTypes.GET_POSTS_PHONE:
            return {
                ...state,
                postsPhone: action.postsPhone || []
            }
        case actionTypes.GET_POSTS_LIMIT:
            return {
                ...state,
                posts: action.posts || [],
                count: action.count || 0
            }
        case actionTypes.GET_POSTS_LIMIT_PRICE:
            return {
                ...state,
                posts: action.posts || [],
                count: action.count || 0
            }
        case actionTypes.GET_POSTS_LIMIT_ACREAGE:
            return {
                ...state,
                posts: action.posts || [],
                count: action.count || 0
            }
        case actionTypes.EDIT_DATA:
            return {
                ...state,	
                dataEdit: action.dataEdit || {},
                province: action.province || null,
            }
        default:
            return state;
    }
}

export default postReducer